#!/bin/bash

java -Xmx3g -cp ../../target/deform-0.0.1-SNAPSHOT.jar org.janelia.saalfeldlab.deform.DeformFromAligned \
 -i /home/papec/Work/data/cremi/realigned_data/sampleA+/raw/sampleA+_raw_automatically_realigned.h5 \
 -j /home/papec/Work/data/results/cremi/jans_affinity_maps/mc_V1/sample_A_test_mcresultV1.h5 \
 -l  \
 -n 37,1176,955 \
 -o /home/papec/Work/data/results/cremi/jans_affinity_maps/mc_v1_realigned/A_test.h5 \
 -t /groups/saalfeld/saalfeldlab/cremi/submissions/deform/sample_A+.transforms.json \
 -m 37,911,911 \
 -k 200,3072,3072 \
 -s 125,1250,1250 \
 -c 64
