pip install -r requirements
git clone https://github.com/pytorch/fairseq.git
cd fairseq && pip install --editable ./
python -c "import torch;print(torch.__version__, torch.version.cuda)"
python -c "import fairseq;print(fairseq.__version__)"
