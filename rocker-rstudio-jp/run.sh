if [ ! -d workspace ]; then
  mkdir workspace
fi

if [ ! -d utils ]; then
  mkdir utils
fi

docker run -d \
  --rm \
  --name my-rstudio-jp \
  -p 8787:8787 \
  -e LC_ALL=en_US.UTF-8 \
  -e TZ=Asia/Tokyo \
  -e ROOT=true \
  -e PASSWORD=password \
  -e DISABLE_AUTH=true \
  -e RENV_CONFIG_PAK_ENABLED=TRUE \
  -e RENV_PATHS_ROOT=/home/rstudio/.cache/R/renv \
  --mount type=bind,source=./workspace,target=/home/rstudio/workspace,bind-propagation=rslave \
  --mount type=bind,source=./utils,target=/home/rstudio/utils,bind-propagation=rslave \
  --mount type=bind,source=$HOME/.cache/R/renv,target=/home/rstudio/.cache/R/renv \
  --mount type=bind,source=$HOME/.cache/R/pkgcache,target=/home/rstudio/.cache/R/pkgcache \
  --mount type=bind,source=$HOME/.cache/rstudio-server,target=/home/rstudio/.cache/rstudio \
  --mount type=bind,source=$HOME/.config/rstudio-server,target=/home/rstudio/.config/rstudio \
  --mount type=bind,source=$HOME/.config/github-copilot,target=/home/rstudio/.config/github-copilot \
  yuheitomi/rocker-rstudio-jp:latest