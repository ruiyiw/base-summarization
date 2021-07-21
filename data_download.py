import os
import gdown
from zipfile import ZipFile

FILE_ID = "1frRtnJpLVxurm-qU-gKxyKW9y8yO9RQm"
DATA_DIR = "data/raw/"
ZIP_FILE = "body-title.zip"

def main():
    url = "https://drive.google.com/uc?id={}".format(FILE_ID)
    ZIP_PATH = os.path.join(DATA_DIR, ZIP_FILE)

    if os.path.isdir(DATA_DIR):
        if os.path.exists(ZIP_PATH):
            print("Zip file already exists.")
        else:
            gdown.download(url, output=ZIP_PATH, quiet=False)
    
    else:
        os.mkdir(DATA_DIR)
        gdown.download(url, output=ZIP_PATH, quiet=False)

    with ZipFile(ZIP_PATH, 'r') as zipObj:
        print("Unzipping all files in {}".format(ZIP_FILE))
        zipObj.extractall(DATA_DIR)
        if os.path.exists(ZIP_PATH):
            os.remove(ZIP_PATH)

    file_list = os.listdir(DATA_DIR)
    print("Renaming the files")
    for file in file_list:
        base_name = os.path.splitext(file)[0]
        os.rename(os.path.join(DATA_DIR, file), os.path.join(DATA_DIR, base_name))


if __name__ == "__main__":
    main()
