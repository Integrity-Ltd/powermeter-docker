docker build --no-cache -f Dockerfile.alpine -t powermeter:1.0-alpine .
docker tag powermeter:1.0-alpine integritypz/powermeter:1.0-alpine
REM docker push integritypz/powermeter:1.0-alpine