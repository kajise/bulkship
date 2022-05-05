## install jabba and sht
echo Downloading Java Version Manager...
curl -sL https://github.com/shyiko/jabba/raw/master/install.sh | bash -s -- --skip-rc && . ~/.jabba/jabba.sh
## list java fckery
jabba ls-remote
