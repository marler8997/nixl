set -ex
echo this is the nixl builder
export PATH="$PATH:$gcc/bin:$coreutils/bin"
#declare -xp
mkdir -p $out/bin
gcc -o $out/bin/nixl $src/*.c
