docker build --no-cache -t powermeter:1.0 .
docker tag powermeter:1.0 integritypz/powermeter:1.0
REM docker push integritypz/powermeter:1.0