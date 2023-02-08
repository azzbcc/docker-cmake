FROM rockylinux:9
LABEL maintainer="Clarence <xjh.azzbcc@gmail.com>"

RUN \
    dnf install epel-release -y && \
    # 安装常用软件
    dnf install gcc cmake pkgconf check-devel uthash-devel valgrind libasan libubsan -y

CMD ["cmake"]
