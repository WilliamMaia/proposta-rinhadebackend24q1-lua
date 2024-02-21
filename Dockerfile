FROM mileschou/lua:5.4

RUN apt update
RUN apt install -y curl unzip gcc git zlib1g-dev
# RUN apk add --no-cache --virtual curl unzip outils-md5 build-base gcc git
RUN luarocks install pegasus