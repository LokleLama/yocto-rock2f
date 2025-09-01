# Yocto Project Setup for ROCK 2F with kas

This repository provides a reproducible build environment for the **Radxa ROCK 2F** board using the [Yocto Project](https://www.yoctoproject.org/) and [kas](https://kas.readthedocs.io/).

---

## 1. Host System Requirements

We recommend **Ubuntu 20.04 LTS** or **22.04 LTS** (64-bit).

### Update and install required packages

```bash
sudo apt-get update
sudo apt-get install -y \
     gawk wget git-core diffstat unzip texinfo gcc \
     build-essential chrpath socat cpio \
     python3 python3-pip python3-pexpect \
     python3-git python3-jinja2 python3.12-venv \
     xz-utils debianutils iputils-ping \
     libsdl1.2-dev xterm zstd lz4
```

### Install kas

```bash
python3 -m venv .venv
source .venv/bin/activate
pip3 install kas
kas --version
```

### Clone this repository

```bash
git clone https://github.com/<your-org>/<your-project>.git
cd <your-project>
```

### Start the Build

```bash
kas build kas.yml
```

