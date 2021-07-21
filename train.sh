cd /share03/rwang/wry/base-transformer || exit
source env/bin/activate

TRAIN_DIR=data/processed
SAVE_DIR=tmp/checkpoints
export CUDA_VISIBLE_DEVICES=`perl /share03/rwang/idle-gpus.pl -n 8`


fairseq-train \
    "$TRAIN_DIR" \
    --arch transformer \
    --optimizer adam --adam-betas '(0.9, 0.98)' \
    --lr 5e-4 --lr-scheduler inverse_sqrt \
    --dropout 0.3 --weight-decay 0.0001 \
    --criterion label_smoothed_cross_entropy --label-smoothing 0.1 \
    --max-tokens 4096 \
    --no-progress-bar \
    --max-epoch 100 \
	--save-dir "$SAVE_DIR"
