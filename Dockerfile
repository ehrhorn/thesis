FROM sumankhanal/texlive-2020:full

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y \
    gcc \
    curl \
    git \
    fish \
    default-jre \
    perl \
    liblog-log4perl-perl \
    liblog-dispatch-perl \
    libyaml-tiny-perl \
    libfile-homedir-perl
RUN cpanm Unicode::GCString
RUN curl -fsSL https://starship.rs/install.sh | bash -s -- --yes
