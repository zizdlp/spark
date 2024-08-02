CURRENT_DIR := $(shell pwd)
run_spark:
	docker stop spark_local
	docker rm spark_local
	docker run -itd  --name spark_local -v  ${CURRENT_DIR}:/root -d zizdlp/bigdata_base
	docker exec -it spark_local bash