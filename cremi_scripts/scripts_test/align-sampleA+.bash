#!/bin/bash

java -Xmx6g -cp ../../target/deform-0.0.1-SNAPSHOT.jar org.janelia.saalfeldlab.deform.DeformToAligned \
 -i /home/papec/Work/data/cremi/orig_data/sample_A+_padded_20160601.hdf \
 -j /home/papec/Work/data/cremi/orig_data/sample_A+_padded_20160601.hdf \
 -o /home/papec/Work/data/cremi/orig_data/realigned/sample_A+_realigned.h5 \
 -t ../../transforms/sample_A+.transforms.json \
 -c 64
