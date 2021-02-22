#!/bin/bash

docker pull nvcr.io/nvidia/tlt-streamanalytics:v1.0_py2

docker run --runtime=nvidia -it \
	-v ./:/TZ-68 \
	-p 80:8888 tlt-streamanalytics:v1.0_py2
cd ..
cd TZ-68
jupyter notebook --ip 0.0.0.0



