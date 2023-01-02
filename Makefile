install:
	#install commmands
	pip install --upgrade pip &&\
		pip install -r requirements.txt
format:
	#Format here
	black *.py mylib/*.py
lint:
	#Flake8 or pylint
	pylint --disable=R,C *.py mylib/*.py
test:
	#test
	python -m pytest -vv --cov=./ test_logic.py
build:
	#Build container
deploy:
	#deploy
all: install lint test deploy