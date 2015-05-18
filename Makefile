S3_ADDRESS = https://s3.amazonaws.com/datarobot_public_datasets
QUESTION_FILE = PISA2009_Questionnaire_MEX.csv
EXAM_FILE = PISA2009_Scored_Tests_MEX.csv

.PHONY: env get_data

all: env get_data

data/%: 
	mkdir -p data
	wget $(S3_ADDRESS)/$* -O $@

get_data: data/$(EXAM_FILE) data/$(QUESTION_FILE)

env:
	pip install -r requirements.txt
