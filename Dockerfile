ARG BASE=mongo:latest
FROM "${BASE}"

# note that mongod doesn't read config by default
# to make it one has to specify --config /etc/mongod.conf option explictly
COPY mongod.conf /etc/mongod.conf

CMD ["mongod", "--ipv6", "--bind_ip_all"]