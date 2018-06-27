FROM golang:latest

RUN mkdir /pingpong
WORKDIR /pingpong/
ADD . /pingpong/ 

# Set up gopath, otherwise everything will blow up
ENV GOPATH $HOME/goApps  
ENV PATH $HOME/goApps/bin:$PATH

EXPOSE 5000

RUN go build 
RUN ls /pingpong

CMD "/pingpong/pingpong"