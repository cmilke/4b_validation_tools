#!/bin/bash
setupATLAS
asetup 21.2.99.0,AthDerivation,here
Reco_tf.py --inputEVNTFile=evgen.root --outputDAODFile=output.pool.root --reductionConf TRUTH1
