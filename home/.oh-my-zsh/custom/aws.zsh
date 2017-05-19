export AWS_DEFAULT_PROFILE=default
export AWS_DEFAULT_REGION=eu-west-1
export AWS_BASTION_DOMAIN=

aws-load-region() {
    if [ "$1" = "ap-south-1" ] ; then
        export AWS_DEFAULT_REGION=$1
    elif [ "$1" = "eu-west-1" ] ; then
        export AWS_DEFAULT_REGION=$1
    elif [ "$1" = "ap-southeast-1" ] ; then
        export AWS_DEFAULT_REGION=$1
    elif [ "$1" = "ap-southeast-2" ] ; then
        export AWS_DEFAULT_REGION=$1
    elif [ "$1" = "eu-central-1" ] ; then
        export AWS_DEFAULT_REGION=$1
    elif [ "$1" = "ap-northeast-2" ] ; then
        export AWS_DEFAULT_REGION=$1
    elif [ "$1" = "ap-northeast-1" ] ; then
        export AWS_DEFAULT_REGION=$1
    elif [ "$1" = "us-east-1" ] ; then
        export AWS_DEFAULT_REGION=$1
    elif [ "$1" = "sa-east-1" ] ; then
        export AWS_DEFAULT_REGION=$1
    elif [ "$1" = "us-west-1" ] ; then
        export AWS_DEFAULT_REGION=$1
    elif [ "$1" = "us-west-2" ] ; then
        export AWS_DEFAULT_REGION=$1
    else
        print ${1} is not a valid region code. Current region is $AWS_DEFAULT_REGION. Available region codes:
        aws-list-regions
    fi
}

aws-list-regions() {
    gist -r 88b1777fd7dd5534ebd17a6155e86816
}

aws-ssh-login() {
    eval `ssh-agent`
    ssh-add ~/.ssh/aws.pem
    ssh -A ec2-user@${AWS_DEFAULT_REGION}.${AWS_BASTION_DOMAIN}
}
