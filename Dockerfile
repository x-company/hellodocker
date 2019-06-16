# This is a Docker Build File
#
# POWERTIP: Use Snippet xb-docker to create a Sample

FROM xcompany/xbuild:latest

ARG XBUILD_BUILD_DATE="2019-06-16T07:02:12Z"
ARG XBUILD_VCS_REF="f762f76"
ARG XBUILD_VERSION="0.1.0"
ARG XBUILD_IMAGE_NAME="xcompany/hellodocker"
ARG XBUILD_IMAGE_DESCRIPTION="Your Image Description"
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

WORKDIR /build

COPY ./src/xcompany/hellodocker/build/ /build/

RUN /build/build.sh

# ENTRYPOINT ["/usr/bin/xinit"]

HEALTHCHECK --interval=5s --timeout=3s CMD /usr/local/bin/healthcheck.sh || exit 1
