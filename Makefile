QUESTION_FILE = PISA2009_Questionnaire_MEX.csv
EXAM_FILE = PISA2009_Scored_Tests_MEX.csv

all: env data

data: 
	wget https://s3.amazonaws.com/datarobot_public_datasets/$(EXAM_FILE)
	wget https://s3.amazonaws.com/datarobot_public_datasets/$(QUESTION_FILE)
	mv $(EXAM_FILE) data/
	mv $(QUESTION_FILE) data/

env:
	pip install -r requirements.txt
