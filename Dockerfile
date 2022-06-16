FROM golang:1.18.3-alpine3.15

WORKDIR /usr/src/app

COPY ./api ./
RUN go get fosshost/api fosshost/api/utils
RUN go build

CMD [ "./api" ]
