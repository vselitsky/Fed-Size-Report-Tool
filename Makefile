
build:
	docker build -t vselitsky/report-tool:latest -f docker/Dockerfile .

deploy:
	docker run -it -d -p 5000:5000 vselitsky/report-tool:latest
	docker build --network host -t report-tool:latest -f docker/Dockerfile .

deploy:

	docker run -it --name=report-tool -d -p 80:5000 \
	--link mysql:dbserver \
	-e DATABASE_URL=mysql+pymysql://mysql:test_pass_15@dbserver/report_db \
	report-tool:latest
deploy_db:
	docker run -it --rm -p 3306:3306 --name=mysql -d \
	-e MYSQL_RANDOM_ROOT_PASSWORD=yes \
    	-e MYSQL_DATABASE=report_db -e MYSQL_USER=mysql \
    	-e MYSQL_PASSWORD=test_pass_15 \
	-v /db_data:/var/lib/mysql \
    	mysql/mysql-server:5.7

deploy_all:
	make build
	make deploy_db
	make deploy

destroy_all:
	docker rm -f report-tool
	docker rm -f mysql
	docker rmi report-tool:latest

destroy:
	docker rm -f report-tool
	docker rm -f mysql

