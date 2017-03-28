import vigra
import h5py
import numpy as np

def add_synclefts(source_file, additional_clefts_file,
        source_path, target_path):
    syns_source = vigra.readHDF5(source_file, source_path)
    add_clefts  = vigra.readHDF5(additional_clefts_file, 'data')

    assert syns_source.shape == add_clefts.shape

    bg_label = syns_source.max()
    add_clefts, _, _ = vigra.analysis.relabelConsecutive(add_clefts, start_label = 1, keep_zeros = True)
    add_clefts[add_clefts == 0] = bg_label

    vigra.writeHDF5(syns_source, source_file, target_path)

    # copy the attributes
    with h5py.File(source_file) as f:
        ds_src = f[source_path]
        ds_tgt = f[target_path]
        for name, val in ds_src.attrs.items():
            ds_tgt.attrs[name] = val



if __name__ == '__main__':
    sample = 'C'
    add_synclefts(
        '/home/papec/Work/data/cremi/orig_data/sample_%s_padded_20160501.hdf' % sample,
        '/media/papec/Seagate Expansion Drive/synapse_data/sample%s_syngt.h5' % sample,
        '/volumes/labels/clefts',
        '/volumes/labels/clefts_corrected')
