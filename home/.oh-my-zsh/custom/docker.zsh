alias dstop='docker stop `docker ps -qa`'
alias drm='docker rm -fv `docker ps -qa`'
alias drmi='docker rmi -f `docker images -qa`'

docker-start() {
    docker-machine create main
    eval $(docker-machine env main)
}
