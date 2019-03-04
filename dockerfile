FROM golang:latest

ENV GOPATH $HOME/go

WORKDIR /go/src/chan
COPY . .

CMD go build -o main;./main
#Build and run this image:
#  cd pg
#  sudo docker build -t mutexx .
#  sudo docker run --rm -it -p 8080:8080 -v $(pwd):/go/src/go_mutex mutexx 