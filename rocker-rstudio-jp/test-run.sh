SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"
CONTAINER_NAME="$(basename $SCRIPT_DIR)"

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
    yuheitomi/rocker-rstudio-jp:latest