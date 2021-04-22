FROM golang 

ADD . /go/src/spinnaker.io/demo/k8s-demo

RUN go install spinnaker.io/demo/k8s-demo@latest

ADD ./content /content

ENTRYPOINT /go/bin/k8s-demo
