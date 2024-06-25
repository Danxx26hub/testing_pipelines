install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt


test:
	python -m pytest -vv test_hello.py


lint:
	pylint --disable=R,C hello.py


pull:

	echo $(secrets.X_API_Key);curl -H $(secrets.X_API_Key) "https://my.api.mockaroo.com/d_load.json" >> test.log
	
all: install lint test pull
