DATA_DIR=data/raw
OUT_DIR=data/processed

fairseq-preprocess --source-lang body --target-lang title \
    --trainpref "$DATA_DIR"/train \
    --validpref "$DATA_DIR"/valid \
    --testpref "$DATA_DIR"/test \
    --destdir "$OUT_DIR" \
    --workers 20 \
