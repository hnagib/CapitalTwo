SHELL=/bin/bash

install-env:
	conda create -n c2 python=3.7
	source activate c2 && pip install -r requirements.txt
	conda install ipykernel
	python -m ipykernel install --user --name c2 --display-name "c2"

uninstall-env:
	conda remove --name c2 --all
