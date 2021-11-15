FROM ubuntu:18.04

WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y curl

COPY 1.8.bash .

# Alternatively, if you skipped chmod earlier, you can add execution permissions during the build.
# RUN chmod +x hello.sh

CMD ./1.8.bash