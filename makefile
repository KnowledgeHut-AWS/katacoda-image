build:
	docker build --tag knowledgehut/katacoda .

run:
	docker run -it --rm -v $$PWD:/work -w /work -v ~/.gitconfig:/root/.gitconfig:ro --name katacoda --hostname katacoda -v /var/run/docker.sock:/var/run/docker.sock knowledgehut/katacoda

install:
	printf "alias kk=\"%s\"" 'docker run -it --rm -v $$PWD:/work -w /work -v ~/.gitconfig:/root/.gitconfig:ro --name katacoda --hostname katacoda -v /var/run/docker.sock:/var/run/docker.sock knowledgehut/katacoda' >> ~/.bash_aliases
