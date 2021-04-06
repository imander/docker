FROM kalilinux/kali-rolling

RUN apt-get update && apt-get install -y \
  apt-utils \
  build-essential \
  cewl \
  curl \
  dirbuster \
  exploitdb \
  git \
  golang \
  hydra \
  john \
  jq \
  make \
  metasploit-framework \
  ncat \
  nmap \
  smbmap \
  python3-pip \
  sqlmap \
  sslscan \
  tmux \
  vim \
  wget \
  wpscan \
  zsh

RUN git clone https://github.com/imander/dotfiles && cd dotfiles && \
  make zsh bash bin env alias config vim tmux
