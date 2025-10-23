start:
	streamlit run app.py

install:
	pip install -U -r requirements.txt
	pip install -U -r requirements-dev.txt

test:
	pytest

format:
	black .
	docformatter -i -r .
	ruff check --fix .

freeze:
	pip freeze > requirements.txt

pip-compile:
	pip-compile

pip-compile-u:
	pip-compile -U
