cd /share03/rwang/wry/base-transformer || exit
source env/bin/activate
export CUDA_VISIBLE_DEVICES=`perl /share03/rwang/idle-gpus.pl -n 1`

files2rouge tmp/test.title.txt tmp/gen.title.txt > files2rouge_score.txt
