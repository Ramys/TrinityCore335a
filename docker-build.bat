@echo off
docker build -t tcbuild -f docker/build/Dockerfile .
docker run -v ${pwd}/docker/build/cache:/trinitycore/build -v ${pwd}/docker/worldserver/bin:/binworldserver -v ${pwd}/docker/authserver/bin:/binauthserver -v ${pwd}/docker/lib:/binlib tcbuild