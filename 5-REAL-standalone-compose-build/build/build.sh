# internal-registry Build Command
DOCKER_BUILDKIT=0 docker build --platform linux/amd64 --no-cache --force-rm -t tmaxsoft-webtob:v5 -f ./DockerFile.webtob5 ../
