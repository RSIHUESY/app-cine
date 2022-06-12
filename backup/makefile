SHELL=/bin/sh

source:
	source ~/backup/Script/activate
	
run:
	virtualenv --python python3 \
		~/envs/backup
	pip install -r requirements.txt
	python main.py

gce:
	gcloud app create
	gcloud app deploy app.yaml \
		--project app-puntos-285220
gcd:
	gcloud app deploy app.yaml \
		--project bamboo-parsec-349012

