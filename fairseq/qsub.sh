qsub -q full-gpu -N nb -l ngpus=8 /share03/rwang/fairseq-1.0/run-2.sh -j oe -o  /share03/rwang/fairseq-1.0/out.txt
