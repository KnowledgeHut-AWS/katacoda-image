from node:lts-alpine3.10

ARG TZ="Africa/Nairobi"

ENV GLIBC_VER=2.31-r0
run echo "Timezone is " $TZ

RUN apk add --no-cache openssl openssh-client tzdata vim curl bash jq zip unzip git ca-certificates make docker docker-compose binutils && \
    cp /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone && \
    apk upgrade --purge && \
    rm -rf /var/cache/apk/* && \
    npm install katacoda-cli --global

run curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh | bash && \
    echo "alias ll='ls -gAlF'" >> /root/.bash_aliases && \
    echo "alias vi='vim'" >> /root/.bash_aliases

entrypoint ['/bin/bash']
