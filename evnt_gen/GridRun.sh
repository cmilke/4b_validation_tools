setupATLAS
asetup AthGeneration,21.6.31,here
lsetup panda
pathena --trf "Gen_tf.py --ecmEnergy=13000 --firstEvent=%SKIPEVENTS --maxEvents=10000 --randomSeed=%RNDM:100 --jobConfig=450044 --outputEVNTFile=%OUT.EVNT.root" --outDS=user.cmilke.450044.${PWD##*/} --split 50 && touch success.tmp
