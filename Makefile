
run:
	docker run -it --cpus="4" --platform linux/amd64 continuumio/miniconda3 /bin/bash 

runComp:
	docker run 33a00426fe2999bdc0ab2c7574d1184b510d46524983716f15af7379548b86d7
	# docker run 33a00426fe29 -it --cpus="4" --platform linux/amd64 continuumio/miniconda3 /bin/bash 

copy:
	docker cp . 33a00426fe29:/home

conda:
	conda env create -f environment.yml


intel:
	/Users/marcussvensson/miniconda3-intel/bin/conda env create -f environment.yml


copyApp:
	docker cp ./podalize_app.py 33a00426fe29:/home/podalize_app.py

copyUtil:
	docker cp ./myutils.py 33a00426fe29:/home/myutils.py

copyCreds:
	docker cp ./api.token 33a00426fe29:/home/api.token

copyFile:
	docker cp ./test.mp3 33a00426fe29:/home/test.mp3