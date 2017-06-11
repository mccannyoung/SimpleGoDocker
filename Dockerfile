FROM golang:1.8.0

RUN mkdir /pingpong
ADD . /pingpong/ 

# Set up gopath, otherwise everything will blow up
ENV GOPATH $HOME/goApps  
ENV PATH $HOME/goApps/bin:$PATH

WORKDIR /pingpong/

RUN go build 

RUN ls /pingpong

EXPOSE 5000

CMD "/pingpong/pingpong"