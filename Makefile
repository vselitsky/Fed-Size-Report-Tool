
build:
        docker build -t test:latest -f docker/Dockerfile .

deploy:
        docker run -it -d -p 5000:5000 test:latest
