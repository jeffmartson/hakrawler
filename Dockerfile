FROM golang:1.25.4


WORKDIR /go/src/hakrawler
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

ENTRYPOINT ["hakrawler"]
