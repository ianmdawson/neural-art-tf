download-models:
	./scripts/download-models.sh

install-dependencies:
	virtualenv venv
	pip install -r requirements.txt
	pip install --upgrade $TF_BINARY_URL
