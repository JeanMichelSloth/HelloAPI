FROM golang:latest
RUN mkdir /build
WORKDIR /build
RUN go get github.com/JeanMichelSloth/HelloAPI
RUN cd /build && git clone https://github.com/JeanMichelSloth/HelloAPI.git
RUN cd /build/HelloAPI && go build
EXPOSE 8000
ENTRYPOINT ["/build/HelloAPI/main"]