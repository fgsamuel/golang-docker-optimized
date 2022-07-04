FROM golang:1.18.3-alpine AS builder

WORKDIR /app

COPY ./src/* ./

RUN go build


FROM scratch

COPY --from=builder /app ./

ENTRYPOINT ["./hello"]

