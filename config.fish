umask 022

set -U  EDITOR       vim
set -U  ARCHFLAGS    "-arch x86_64"


set -gx MANPATH     /usr/local/man $MANPATH
set -gx LANG        en_US.UTF-8


set -x  JAVA_HOME    "/Library/Java/JavaVirtualMachines/jdk1.8.0_261.jdk/Contents/Home"
set -x  VSCODE_PATH  "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
set -x  COURSIER     "$HOME/Library/Application Support/Coursier/bin"
set -x  CARGO_PATH   "$HOME/.cargo"
set -x  GHCUP_PATH   "$HOME/.ghcup"
set -x  NODE_PATH    "$HOME/.nvm/versions/node/v12.22.1"
set -x  NVM_DIR      "$HOME/.nvm"

set -gx PATH        $JAVA_HOME/bin $VSCODE_PATH $COURSIER $HOME/bin /usr/local/bin /usr/local/sbin $PATH
set -gx PATH        $NVM_DIR $NODE_PATH/bin $GHCUP_PATH/bin $CARGO_PATH/bin $PATH

source $HOME/tools/venv/bin/activate.fish
