FROM xcompany/xbuild:latest

COPY   ../src/xcompany/hellodocker/build/ /build/

COPY   ../src/xcompany/hellodocker/rootfs/ /

COPY    ./xbuild.conf /build/xbuild.conf

COPY    ./sources.list /build/sources.list

RUN    xb-build

WORKDIR /

