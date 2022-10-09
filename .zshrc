export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="spaceship"

plugins=(git)

source $ZSH/oh-my-zsh.sh

### ASDF config
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
asdf global nodejs lts
asdf global erlang 24.1.7
asdf global elixir 1.13.1
asdf global deno 1.23.4

### Poetry config
source $HOME/.poetry/env

### GCloud config
export GOOGLE_APPLICATION_CREDENTIALS="$HOME/.config/gcloud/application_default_credentials.json"

### Python Config
alias py='/usr/bin/python3.9'

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

### Golang Config
export PATH=$PATH:/usr/local/go/bin

### Android Emulator Config
export ANDROID_SDK=/home/alexandre/Android/Sdk
export ANDROID_HOME=$ANDROID_SDK
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin
export ANDROID_EMULATOR_PATH="$ANDROID_SDK/emulator"
alias emulator_android="$ANDROID_EMULATOR_PATH/emulator -avd Nexus_S_API_31"

### Gcloud config
alias gcp_app_login="gcloud auth application-default login"

### Other configs
eval "$(thefuck --alias)"
