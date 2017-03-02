zsh_custom_aws() {
    if [ -n "$AWS_DEFAULT_PROFILE" ]; then
        echo -n "$AWS_DEFAULT_PROFILE";
    fi
    if [ -n "$AWS_DEFAULT_REGION" ]; then
        echo -n "/$AWS_DEFAULT_REGION";
    fi
}

ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status custom_aws time)
POWERLEVEL9K_CUSTOM_AWS="zsh_custom_aws"
POWERLEVEL9K_CUSTOM_AWS_FOREGROUND="007"
POWERLEVEL9K_CUSTOM_AWS_BACKGROUND="166"
