.\clean.ps1
docker build -t "nginx:test" .
docker run --name test -p 8080:8080 nginx:test