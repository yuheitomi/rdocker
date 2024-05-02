FROM rocker/r-ver:4.4

RUN \
    --mount=type=cache,target=/var/lib/apt/lists \
    --mount=type=cache,target=/var/cache/apt/archives \
    apt-get update && apt-get install -y \
    openssh-client \
    fonts-ipaexfont \
    fonts-noto-cjk \
    # Install dependencies for tidyverse
    libfreetype6-dev \
    libfontconfig1-dev \
    libfribidi-dev \
    libharfbuzz-dev \
    libicu-dev \
    libtiff-dev \
    libxml2-dev \
    pandoc \
    # Install dependencies for usethis
    libgit2-dev

RUN R -e "install.packages('here')"
RUN R -e "install.packages('tidyverse')"
