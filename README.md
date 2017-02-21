# rpi-mediawiki
## dorry-mediawiki
Jump the config processing.

## Build Dockerfile
* Dockerfile_x86 is the mediawiki on x86
* Dockerfile_arm is the mediawiki on arm
* Dockerfile is the same as Dockerfile_x86.

```bash
$ docker build -t dorry-mediawiki -f Dockerfile_x86 .
or
$ docker build -t dorry-mediawiki .
```


```bash
$ docker build -t dorry-mediawiki -f Dockerfile_arm .
```

## Environment
* SERVER_ADDR           server mediawiki service address, e.g.,http://test-a:9000
* DB_SERVER_IP          database ip. e.g., 172.17.0.2
* DB_USER               database user. e.g., root
* DB_PASSWORD           database user password. e.g., abc123_

## Run Docker Image
```bash
$ docker run -itd --name dorry-mediawiki -p 9000:9000 --link mysql:mysql --privileged dorry-mediawiki
```
