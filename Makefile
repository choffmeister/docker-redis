IMAGE=choffmeister/redis
TAG=5

build:
	docker build -t $(IMAGE):$(TAG) .

test: build
	docker run --rm -it -p 6380:6380 -e REDIS_PORT=6380 -e REDIS_PASS=pass $(IMAGE):$(TAG)

push: build
	docker push $(IMAGE):$(TAG)
