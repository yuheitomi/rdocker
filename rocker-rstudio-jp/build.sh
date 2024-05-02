# docker pull rocker/rstudio:4.4
# docker build . -t yuheitomi/rocker-rstudio-jp:latest

docker buildx build -t yuheitomi/rocker-rstudio-jp:latest . \
    --platform linux/amd64,linux/arm64/v8 \
    --output=type=image,push=true
    
