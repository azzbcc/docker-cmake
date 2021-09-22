FROM alpine
LABEL maintainer="Clarence <xjh.azzbcc@gmail.com>"

# 安装常用软件
RUN \
    apk add --no-cache build-base cmake pkgconf check-dev uthash-dev valgrind

CMD ["cmake"]
