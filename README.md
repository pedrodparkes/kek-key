```shell
docker build -t nginx-key-server .

docker run -d -p 8080:80 nginx-key-server

curl http://localhost:8080/getkey
```