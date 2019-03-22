set -ex
declare -xp
export PATH="$PATH:$coreutils/bin"
ls -l $NIX_BUILD_TOP
