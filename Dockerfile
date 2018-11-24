FROM ubuntu:16.04

RUN groupadd -g 1000 panchatcharama

RUN useradd -u 1000 -g 1000 -ms /bin/bash panchatcharama \
        && echo "panchatcharama:panchatcharama" | chpasswd \
        && adduser panchatcharama sudo

USER panchatcharama:panchatcharama

ENV USER panchatcharama

ENV HOME /home/panchatcharama 

WORKDIR ${HOME}

#[user]
#    email = arumugam.panchatcharam@technicolor.com
#    name = Arumugam Panchatcharam
#[color]
#    ui = auto
#[gitreview]
#    username = panchatcharama
#[review "https://gerrit.teamccp.com"]
#    username = panchatcharama
#[http]
#    sslVerify = false
#    postBuffer = 157286400
#[alias]
#    sshow = "!f() { git stash show stash^{/$*} -p; }; f"
#    sapply = "!f() { git stash apply stash^{/$*}; }; f" 

# Configure default git user
RUN echo "[user]" >> ${HOME}/.gitconfig \
        && echo "       email = arumugam.panchatcharam@technicolor.com" >> ${HOME}/.gitconfig \
        && echo "       name = Arumugam Panchatcharam" >> ${HOME}/.gitconfig \
        && echo "[color]" >> ${HOME}/.gitconfig \
        && echo "       ui = auto" >> ${HOME}/.gitconfig \
        && echo "[gitreview]" >> ${HOME}/.gitconfig \
        && echo "       username = panchatcharama" >> ${HOME}/.gitconfig \
        && echo "[review \"https://gerrit.teamccp.com\"]" >> ${HOME}/.gitconfig \
        && echo "       username = panchatcharama" >> ${HOME}/.gitconfig \
        && echo "[http]" >> ${HOME}/.gitconfig \
        && echo "       sslVerify = false" >> ${HOME}/.gitconfig \
        && echo "       postBuffer = 157286400" >> ${HOME}/.gitconfig \
        && echo "[alias]" >> ${HOME}/.gitconfig \
        && echo "       sshow = \"!f() { git stash show stash^{/$*} -p; }; f\"" >> ${HOME}/.gitconfig \
        && echo "       sapply = \"!f() { git stash apply stash^{/$*}; }; f\"" >> ${HOME}/.gitconfig 

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
