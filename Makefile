
build:
	docker build --network host -t report-tool:latest -f docker/Dockerfile .

deploy:

	docker run -it --name=report-tool -d -p 80:5000 report-tool:latest

