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
    libfile-homedir-perl \
    cpanminus
RUN cpanm Unicode::GCString
RUN curl -fsSL https://starship.rs/install.sh | bash -s -- --yes
RUN tlmgr update --all
RUN mkdir -p ~/.local/share/fonts
WORKDIR ~/.local/share/fonts
RUN curl -fLo "Blex Mono Nerd Font Complete" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/IBMPlexMono/Mono/complete/Blex%20Mono%20Nerd%20Font%20Complete.ttf
