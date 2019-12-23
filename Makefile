
build:
	docker build --network host -t report-tool:latest -f docker/Dockerfile .

deploy:

	docker run -it --name=report-tool -d -p 80:5000 \
	--link mysql:dbserver \
	-e DATABASE_URL=mysql+pymysql://mysql:off110650@dbserver/report_db \
	report-tool:latest
deploy_db:
	docker run -it --rm -p 3306:3306 --name=mysql -d \
	-e MYSQL_RANDOM_ROOT_PASSWORD=yes \
    	-e MYSQL_DATABASE=report_db -e MYSQL_USER=mysql \
    	-e MYSQL_PASSWORD=off110650 \
    	mysql/mysql-server:5.7
