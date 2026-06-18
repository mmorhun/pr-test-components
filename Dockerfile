FROM registry.access.redhat.com/ubi9/go-toolset:1.26.3-1781757851

COPY . .
RUN go mod download

RUN go build -buildvcs=false -o ./main

ENV PORT 8081
EXPOSE 8081

CMD [ "./main" ]
