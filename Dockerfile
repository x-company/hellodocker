# This is a Docker Build File
#
# POWERTIP: Use Snippet xb-docker to create a Sample

FROM xcompany/xbuild:latest

ARG XBUILD_BUILD_DATE="2019-06-26T00:12:11Z"
ARG XBUILD_VCS_REF="20fa4a5"
ARG XBUILD_VERSION="0.1.4"
ARG XBUILD_IMAGE_NAME="xcompany/hellodocker"
ARG XBUILD_IMAGE_DESCRIPTION="A Sample Image with xbuild in it"
ARG XBUILD_VENDOR="IT Solutions Roland Breitschaft"
ARG XBUILD_VENDOR_URL="https://www.x-company.de"
ARG XBUILD_VENDOR_MAIL="info@x-company.de"

LABEL  de.x-company.build-date=$XBUILD_BUILD_DATE \
       de.x-company.name=$XBUILD_IMAGE_NAME \
       de.x-company.description=$XBUILD_IMAGE_DESCRIPTION \
       de.x-company.url=$XBUILD_VENDOR_URL \
       de.x-company.vcs-ref=$XBUILD_VCS_REF \
       de.x-company.vcs-url="https://github.com/xcompany/hellodocker" \
       de.x-company.vendor=$XBUILD_VENDOR \
       de.x-company.version=$XBUILD_VERSION \
       de.x-company.schema-version="1.0" \
       de.x-company.license="MIT" \
       maintainer=$XBUILD_VENDOR_MAIL \
       vendor=$XBUILD_VENDOR \
       description=$XBUILD_IMAGE_DESCRIPTION \
       version=$XBUILD_VERSION

COPY   ./src/xcompany/hellodocker/build/ /build/

COPY   ./src/xcompany/hellodocker/rootfs/ /

RUN    xb-build

WORKDIR /

ENTRYPOINT ["/init"]

HEALTHCHECK --interval=5s --timeout=3s CMD /usr/local/bin/xb-healthcheck || exit 1
