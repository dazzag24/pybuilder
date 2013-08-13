from	base
ENV   http_proxy http://10.1.0.11:8080/
ENV   https_proxy https://10.1.0.11:8080/
run	echo 'deb http://archive.ubuntu.com/ubuntu quantal main universe multiverse' > /etc/apt/sources.list
run	apt-get update
run	DEBIAN_FRONTEND=noninteractive apt-get install -y -q git curl golang s3cmd
copy	git-wrapper	/usr/local/bin/git
copy	s3cfg	/.s3cfg
run	DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all
run	DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-pip
copy	buildapp	/usr/local/bin/buildapp
copy	runapp	/usr/local/bin/runapp
