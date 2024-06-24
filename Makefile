install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt


test:
	python -m pytest -vv test_hello.py


lint:
	pylint --disable=R,C hello.py


pull:
	curl -H ${X_API_Key} https://my.api.mockaroo.com/d_load.json >> test.txt

all: install lint test pull
