SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"
CONTAINER_NAME="$(basename $SCRIPT_DIR)"

if [ ! -d workspace ]; then
    mkdir workspace
fi

docker pull yuheitomi/rocker-rstudio-jp:latest

docker run \
    -d \
    --rm \
    --name $CONTAINER_NAME \
    -p 8787:8787 \
    -e LC_ALL=en_US.UTF-8 \
    -e TZ=Asia/Tokyo \
    -e ROOT=true \
    -e PASSWORD=password \
    -e DISABLE_AUTH=true \
    -e RENV_CONFIG_PAK_ENABLED=TRUE \
    -e RENV_PATHS_ROOT=/home/rstudio/.cache/R/renv \
    --mount type=bind,source=./workspace,target=/home/rstudio/workspace \
    --mount type=bind,source=./utils,target=/home/rstudio/utils \
    --mount type=bind,source=$HOME/.cache/R/renv,target=/home/rstudio/.cache/R/renv \
    --mount type=bind,source=$HOME/.cache/R/pkgcache,target=/home/rstudio/.cache/R/pkgcache \
    --mount type=bind,source=$HOME/.cache/rstudio-server,target=/home/rstudio/.cache/rstudio \
    --mount type=bind,source=$HOME/.config/rstudio-server,target=/home/rstudio/.config/rstudio \
    --mount type=bind,source=$HOME/.config/github-copilot,target=/home/rstudio/.config/github-copilot \
    yuheitomi/rocker-rstudio-jp:latest