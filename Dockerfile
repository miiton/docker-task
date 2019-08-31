FROM golang:1-alpine

WORKDIR /work
COPY tmp/task /usr/local/bin/task
COPY Taskfile.yml /work/Taskfile.yml

ENTRYPOINT /usr/local/bin/task


