## install jabba and sht
echo Downloading Java Version Manager...
curl -sL https://github.com/shyiko/jabba/raw/master/install.sh | bash -s -- --skip-rc && . ~/.jabba/jabba.sh
## check if java is even installed correctly
jabba install zulu@1.11.0
java -version
