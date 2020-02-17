set fish_greeting
# echo -e "\e]12;green\a\b\b"

function ..
  cd ..
end

# custom export

# set -gx PATH $PATH (brew --prefix openvpn)/sbin:/usr/local/bin:/usr/local/opt/coreutils/libexec/gnubin:/Users/ash/repos/tools/gcc-arm-7/bin
# set -x MANPATH $MANPATH /usr/local/opt/coreutils/libexec/gnuman

# set -x ANDROID_HOME $HOME/Library/Android/sdk
# set -x PATH $PATH:$ANDROID_HOME/emulator
# set -x PATH $PATH:$ANDROID_HOME/tools
# set -x PATH $PATH:$ANDROID_HOME/tools/bin
# set -x PATH $PATH:$ANDROID_HOME/platform-tools

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

set -Ux LC_ALL en_US.UTF-8
set -Ux LANG en_US.UTF-8

set -gx MOSH_ESCAPE_KEY 31

# set -x PATH /usr/local/opt/python/libexec/bin:$PATH
# set -g fish_user_paths "/usr/local/opt/ruby/bin" $fish_user_paths
