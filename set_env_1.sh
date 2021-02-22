#!/bin/bash

#Set up environment
#Create multiple folders w/ names deteset,....

# mkdir ./{dataset,tf_records,pretrained_model,trained_model,pruned_model,retrained_model,exported_model,spec_files,scripts}

APIKEY=$(cat scripts/api_key.txt)
for i in  dataset tf_records pretrained_model trained_model pruned_model retrained_model exported_model spec_files,scripts
do
	if [[ -e "${i}" ]];
	then
		echo "${i} already exists"
	else 
		mkdir ./${i}
	fi
done
