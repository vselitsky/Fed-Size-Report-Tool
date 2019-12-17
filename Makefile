
build:
	docker build -t vselitsky/report-tool:latest -f docker/Dockerfile .

deploy:
	docker run -it -d -p 5000:5000 vselitsky/report-tool:latest
