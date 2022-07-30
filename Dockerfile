FROM alpine
RUN apk update && apk add lua5.3

WORKDIR /app
COPY binary.lua .

