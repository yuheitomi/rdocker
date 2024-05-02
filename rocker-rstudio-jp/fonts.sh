# Install custom fonts for RStudio
mkdir -p ~/.config/rstudio/fonts/PlemolJPConsole/400/italic
mkdir -p ~/.config/rstudio/fonts/PlemolJPConsole/700/italic
wget https://github.com/yuru7/PlemolJP/releases/download/v1.7.1/PlemolJP_v1.7.1.zip
unzip PlemolJP_v1.7.1.zip
cp PlemolJP_v1.7.1/PlemolJPConsole/PlemolJPConsole-Regular.ttf ~/.config/rstudio/fonts/PlemolJPConsole/400
cp PlemolJP_v1.7.1/PlemolJPConsole/PlemolJPConsole-Italic.ttf ~/.config/rstudio/fonts/PlemolJPConsole/400/italic
cp PlemolJP_v1.7.1/PlemolJPConsole/PlemolJPConsole-Bold.ttf ~/.config/rstudio/fonts/PlemolJPConsole/700
cp PlemolJP_v1.7.1/PlemolJPConsole/PlemolJPConsole-BoldItalic.ttf ~/.config/rstudio/fonts/PlemolJPConsole/700/italic
rm PlemolJP_v1.7.1.zip
rm -rf PlemolJP_v1.7.1
