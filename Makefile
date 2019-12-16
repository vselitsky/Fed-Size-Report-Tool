
build:
	docker build -t report-tool:latest -f docker/Dockerfile .

deploy:
	docker run -it -d -p 5000:5000 report-tool:latest
