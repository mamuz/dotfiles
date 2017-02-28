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
    print "| Region Code    | Region Name               |"
    print "| -------------- | ------------------------- |"
    print "| us-east-1      | US East (N. Virginia)     |"
    print "| us-west-2      | US West (Oregon)          |"
    print "| us-west-1      | US West (N. California)   |"
    print "| eu-west-1      | EU (Ireland)              |"
    print "| eu-central-1   | EU (Frankfurt)            |"
    print "| ap-southeast-1 | Asia Pacific (Singapore)  |"
    print "| ap-northeast-1 | Asia Pacific (Tokyo)      |"
    print "| ap-southeast-2 | Asia Pacific (Sydney)     |"
    print "| ap-northeast-2 | Asia Pacific (Seoul)      |"
    print "| ap-south-1     | Asia Pacific (Mumbai)     |"
    print "| sa-east-1      | South America (São Paulo) |"
}

aws-ssh-login() {
    eval `ssh-agent`
    ssh-add ~/.ssh/aws.pem
    ssh -A ec2-user@${AWS_DEFAULT_REGION}.${AWS_BASTION_DOMAIN}
}
