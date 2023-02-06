FROM rockylinux:9
LABEL maintainer="Clarence <xjh.azzbcc@gmail.com>"

RUN \
    dnf install epel-release 'dnf-command(config-manager)' -y && \
    # 启用CRB源
    dnf config-manager --enable crb && \
    # 安装常用软件
    dnf install gcc cmake pkgconf check-devel uthash-devel valgrind ninja-build -y

CMD ["cmake"]
