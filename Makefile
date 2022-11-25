IMAGE=choffmeister/redis
TAG=7

build:
	docker buildx build --platform=linux/amd64 -t $(IMAGE):$(TAG) --load .

test: build
	docker run --rm -it -p 6380:6380 -e REDIS_PORT=6380 -e REDIS_PASS=pass $(IMAGE):$(TAG)

push:
	docker buildx build --platform=linux/amd64 -t $(IMAGE):$(TAG) --push .
