
build:
	docker build -t report-tool:latest -f docker/Dockerfile .

deploy:

	docker run -it -d -p 80:5000 test:latest

