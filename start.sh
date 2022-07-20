## install jabba (java version holder) and java
if ! [ -x "$(command -v jabba)" ]; then
  	echo 'Error: jabba is not installed. Installing...' >&2
  	curl -sL https://github.com/shyiko/jabba/raw/master/install.sh | bash -s -- --skip-rc && . ~/.jabba/jabba.sh

	if ! [ -x "$(command -v java -version)" ]; then
		echo 'Error: java v11 is not installed. Installing...' >&2
		jabba install zulu@1.11.0
		java -version
		exit 1
		# do your thing below
	else
		echo 'Success: java v11 is installed.' >&2
		java -version
		exit 1
		# do your thing below
	fi

else
	echo 'Success: jabba is installed.' >&2
	java -version
	exit 1
fi
