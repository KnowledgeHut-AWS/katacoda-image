build:
	docker build --tag bryandollery/katacoda .

run:
	docker run -it --rm -v $$PWD:/work -w /work -v /mnt/c/Users/bryan/git/:/git -v ~/.gitconfig:/root/.gitconfig:ro --name katacoda --hostname katacoda -v /var/run/docker.sock:/var/run/docker.sock --entrypoint bash bryandollery/katacoda

install:
	echo "alias kk='docker run -it --rm -v \$$PWD:/work -w /work -v /mnt/c/Users/bryan/git/:/git -v ~/.gitconfig:/root/.gitconfig:ro --name katacoda --hostname katacoda -v /var/run/docker.sock:/var/run/docker.sock --entrypoint bash bryandollery/katacoda'" >> ~/.bash_aliases

