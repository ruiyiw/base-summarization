import os
import gdown
import tarfile

FILE_ID = "0B6N7tANPyVeBNmlSX19Ld2xDU1E"
DATA_DIR = "gigaword/raw/"
TAR_FILE = "summary.tar.gz"

def main():
    url = "https://drive.google.com/uc?id={}".format(FILE_ID)
    TAR_PATH = os.path.join(DATA_DIR, TAR_FILE)

    if os.path.isdir(DATA_DIR):
        if os.path.exists(TAR_PATH):
            print("Rar file already exists.")
        else:
            gdown.download(url, output=TAR_PATH, quiet=False)
    
    else:
        os.mkdir(DATA_DIR)
        gdown.download(url, output=TAR_PATH, quiet=False)


    file = tarfile.open(TAR_PATH, 'r:gz')
    print("Unraring all files in {}".format(TAR_FILE))
    file_names = file.getnames()
    for name in file_names:
        file.extract(name, DATA_DIR)
    file.close()
    


if __name__ == "__main__":
    main()
