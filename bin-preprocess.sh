TASK=../bart-transformer/cnn_dm/processed
OUT_DIR=../bart-transformer/tmp/bin

fairseq-preprocess \
  --source-lang "source" \
  --target-lang "target" \
  --trainpref "${TASK}/train.bpe" \
  --validpref "${TASK}/val.bpe" \ 
  --testpref "${TASK}/test.bpe" \
  --destdir "${OUT_DIR}/" \
  --workers 60 \
  --srcdict dict.txt \
  --tgtdict dict.txt
