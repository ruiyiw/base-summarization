BIN_PATH=data/processed
CKPT_PATH=tmp/checkpoints/checkpoint_best.pt
OUT_PATH=tmp/

fairseq-generate "$BIN_PATH" --path "$CKPT_PATH" \
    --gen-subset "test" \
    --beam 5 --batch-size 128 --remove-bpe > "${OUT_PATH}gen.txt"

