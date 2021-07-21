from rouge import FilesRouge
HYP_PATH = "tmp/gen.title.txt"
REF_PATH = "tmp/test.title.txt"

def main():
    files_rouge = FilesRouge()
    scores = files_rouge.get_scores(HYP_PATH, REF_PATH)
    rouge_1 = [score['rouge-1']['f'] for score in scores]
    rouge_2 = [score['rouge-2']['f'] for score in scores]
    rouge_l = [score['rouge-l']['f'] for score in scores]
    print("rouge-1 = {}".format(sum(rouge_1) / len(rouge_1)))
    print("rouge-2 = {}".format(sum(rouge_2) / len(rouge_2)))
    print("rouge-l = {}".format(sum(rouge_l) / len(rouge_l)))
    

if __name__ == "__main__":
    main()
