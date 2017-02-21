# rpi-mediawiki
## dorry-mediawiki
Jump the config processing.

## Build Dockerfile
* Dockerfile_x86 is the mediawiki on x86
* Dockerfile_arm is the mediawiki on arm
* Dockerfile is the same as Dockerfile_x86.

```bash
$docker build -t dorry-mediawiki -f Dockerfile_x86 .
or
$docker build -t dorry-mediawiki -f Dockerfile .
```


```bash
$docker build -t dorry-mediawiki -f Dockerfile_arm .
```
