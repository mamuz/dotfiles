phpda() {
    tty=
    tty -s && tty=--tty
    docker run \
       $tty \
       --interactive \
       --rm \
       --user $(id -u):$(id -g) \
       --volume /etc/passwd:/etc/passwd:ro \
       --volume /etc/group:/etc/group:ro \
       --volume $(pwd):/app \
       mamuz/php-analyzer phpda "$@"
}

phpcs() {
    tty=
    tty -s && tty=--tty
    docker run \
       $tty \
       --interactive \
       --rm \
       --user $(id -u):$(id -g) \
       --volume /etc/passwd:/etc/passwd:ro \
       --volume /etc/group:/etc/group:ro \
       --volume $(pwd):/app \
       mamuz/php-analyzer phpcs "$@"
}

phpcbf() {
    tty=
    tty -s && tty=--tty
    docker run \
       $tty \
       --interactive \
       --rm \
       --user $(id -u):$(id -g) \
       --volume /etc/passwd:/etc/passwd:ro \
       --volume /etc/group:/etc/group:ro \
       --volume $(pwd):/app \
       mamuz/php-analyzer phpcbf "$@"
}

phpmd() {
    tty=
    tty -s && tty=--tty
    docker run \
       $tty \
       --interactive \
       --rm \
       --user $(id -u):$(id -g) \
       --volume /etc/passwd:/etc/passwd:ro \
       --volume /etc/group:/etc/group:ro \
       --volume $(pwd):/app \
       mamuz/php-analyzer phpmd "$@"
}

phpcpd() {
    tty=
    tty -s && tty=--tty
    docker run \
       $tty \
       --interactive \
       --rm \
       --user $(id -u):$(id -g) \
       --volume /etc/passwd:/etc/passwd:ro \
       --volume /etc/group:/etc/group:ro \
       --volume $(pwd):/app \
       mamuz/php-analyzer phpcpd "$@"
}

phploc() {
    tty=
    tty -s && tty=--tty
    docker run \
       $tty \
       --interactive \
       --rm \
       --user $(id -u):$(id -g) \
       --volume /etc/passwd:/etc/passwd:ro \
       --volume /etc/group:/etc/group:ro \
       --volume $(pwd):/app \
       mamuz/php-analyzer phploc "$@"
}

security-check() {
    tty=
    tty -s && tty=--tty
    docker run \
       $tty \
       --interactive \
       --rm \
       --user $(id -u):$(id -g) \
       --volume /etc/passwd:/etc/passwd:ro \
       --volume /etc/group:/etc/group:ro \
       --volume $(pwd):/app \
       mamuz/php-analyzer security-checker "$@"
}

phpmetrics() {
    tty=
    tty -s && tty=--tty
    docker run \
       $tty \
       --interactive \
       --rm \
       --user $(id -u):$(id -g) \
       --volume /etc/passwd:/etc/passwd:ro \
       --volume /etc/group:/etc/group:ro \
       --volume $(pwd):/app \
       mamuz/php-analyzer phpmetrics "$@"
}
