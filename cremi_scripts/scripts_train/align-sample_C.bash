#!/bin/bash

java -Xmx3g -cp ../../target/deform-0.0.1-SNAPSHOT.jar org.janelia.saalfeldlab.deform.DeformToAligned \
 -i /home/papec/Work/data/cremi/orig_data/sample_C_padded_20160501.hdf \
 -j /home/papec/Work/data/cremi/orig_data/sample_C_padded_20160501.hdf \
 -o /home/papec/Work/data/cremi/orig_data/realigned/sample_C_realigned.h5 \
 -t ../../transforms/sample_C.transforms.json \
 -c 64
