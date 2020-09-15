#!/bin/bash
setupATLAS
asetup AthGeneration,21.6.31,here
Gen_tf.py --ecmEnergy=13000 --firstEvent=1 --randomSeed=1234 --jobConfig=450044 --outputEVNTFile=evgen.root --maxEvents=10000
