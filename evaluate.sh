EVAL_DIR=tmp/

grep ^S "${EVAL_DIR}gen.txt" | cut -f2- > "${EVAL_DIR}test.body.txt"
grep ^T "${EVAL_DIR}gen.txt" | cut -f2- > "${EVAL_DIR}test.title.txt"
grep ^H "${EVAL_DIR}gen.txt" | cut -f3- > "${EVAL_DIR}gen.title.txt"

fairseq-score --sys "${EVAL_DIR}gen.title.txt" --ref "${EVAL_DIR}test.title.txt" > eval.txt
