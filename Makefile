PHONY: build deploy

TASK_VERSION=v3.0.0-preview1

build:
	rm -rf tmp
	mkdir -p tmp
	curl -L https://github.com/go-task/task/releases/download/${TASK_VERSION}/task_linux_amd64.tar.gz | \
	tar zx -C tmp/
	docker build -t miiton/task:latest .

deploy: build
	docker push miiton/task
