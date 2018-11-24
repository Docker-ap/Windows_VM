FROM ubuntu:16.04

USER panchatcharama

ENV USER panchatcharama

WORKDIR /home/panchatcharama

# Configure default git user
RUN echo "panchatcharama" >> /home/panchatcharama/.gitconfig \
        && echo "email = arumugam.panchatcharam@technicolor.com" >> /home/panchatcharama/.gitconfig \
        && echo "name = Arumugam Panchatcharam" >> /home/panchatcharama/.gitconfig

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y openjdk-8-jdk

# Create a non-root user 
RUN id panchatcharama 2>/dev/null || useradd --uid 1000 --create-home panchatcharama

RUN echo "panchatcharama ALL=(ALL) NOPASSWD: ALL" | tee -a /etc/sudoers

# Disable Host Key verification.
RUN mkdir -p /home/panchatcharama/.ssh

RUN chown -R panchatcharama:panchatcharama /home/panchatcharama/.ssh

RUN sudo apt-get update && && apt-get install -y \
        autoconf \
        automake \
        autotools-dev \
        bc \
        bison \
        binfmt-support \
        binutils-mingw-w64 \
        build-essential \
        bzip2 \
        coreutils \
        checkinstall \
        chrpath \
        cmake \
        cppcheck \
        curl \
        debhelper \
        devscripts \
        device-tree-compiler \
        dnsutils \
        diffstat \
        dos2unix \
        dosfstools \
        doxygen \
        doxygen-latex \
        dpkg \
        fabric \
        fastjar \
        flawfinder \
        flex \
        g++ \
        gawk \
        gcc \
        gcc-4.8 \
        gcc-4.9 \
        gcc-5 \
        gcc-multilib \
        gdb \
        gettext \
        ghostscript \
        git \
        gperf \
        g++-multilib \
        htop \
        imagemagick \
        intltool \
        jq \
        lib32z1 \
        lib32stdc++6 \
        lcov \
        libboost-all-dev \
        libbz2-dev \
        libc6 \
        libc6-dev \
        libc6-dev-i386 \
        libcurl4-openssl-dev \
        libcurlpp-dev \
        libffi-dev \
        libfdt-dev \
        libfuse-dev \
        libglib2.0-0 \
        libglib2.0-dev \
        libgsl2 \
        libgsl-dev \
        libicu-dev \
        liblapack-dev \
        liblzma-dev \
        libncurses5-dev \
        libreadline6 \
        libsane-extras \
        libssl1.0.0 \
        libssl-dev \
        libtool \
        libwine-development \
        libreadline-dev \
        libxml2 \
        libxml2-dev \
        libxml2-utils \
        libxmlsec1 \
        libxmlsec1-dev \
        libxmlsec1-openssl \
        libxslt1.1 \
        libxslt1-dev \
        llvm-5.0 \
        lsof \
        make \
        mawk \
        mtools \
        mime-support \
        nano \
        nodejs \
        openjdk-8-jdk \
        openssh-client \
        openssh-server \
        openssl \
        pkg-config \
        parallel \
        parted \
        pass \
        pbuilder \
        perl \
        python \
        python2.7 \
        python-yaml \
        python-git \
        python3 \
        python3-all \
        python3-all-dev \
        python3-dev \
        python3-setuptools \
        python-all \
        python-all-dev \
        python-dev \
        python-setuptools \
        python-pip \ 
        python-argparse \
        python-simplejson \
        regina-rexx \
        rsync \
        ruby-all-dev \
        rpcbind nfs-common \
        syslinux \
        screen \
        ssh \
        strace \
        sudo \
        squashfs-tools \
        textinfo \
        time \
        tree \
        ubuntu-restricted-addons \
        ubuntu-restricted-extras \
        upx-ucl \
        valgrind \
        vim \
        virtualenv \
        wget \
        wine \
        wine64-development-tools \
        winetricks \
        xmldiff \
        xmlindent \
        xmlsec1 \
        zbar-tools \
        zip \
        zlib1g \
        zlib1g-dev \
        pyyaml \
        autopep8 \
        cffi \
        coverage \
        dnspython \
        fabric \
        json-spec \
        lxml 

CMD "/bin/bash"
