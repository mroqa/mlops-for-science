install:
	#install commmands
	pip install --upgrade pip &&\
		pip install -r requirements.txt
format:
	#Format here
	black *.py dash_test/*.py
lint:
	#Flake8 or pylint
	pylint --disable=R,C *.py dash_test/*.py
test:
	#test
	# python -m pytest -vv --cov=app.py dash_test/test_one.py
build:
	#Build container
deploy:
	#deploy
all: install lint test deploy