
# Load jenv
if [ -s "$HOME/.jenv/bin/jenv" ] && [ ! "$(type -f __init_jevn)" = function ]; then

	JENV_DIR="$HOME/.jenv"
	export PATH="$HOME/.jenv/bin:$PATH"
	declare -a __java_commands=(jenv `find -L $JENV_DIR/shims -type f -exec basename {} \; | sort -u`)
	function __init_jenv() {
		for i in "${__java_commands[@]}"; do unalias $i; done
		eval "$(jenv init -)"
		unset __java_commands
		unset -f __init_jenv
	}	

	for i in "${__java_commands[@]}"; do alias $i='__init_jenv && '$i; done
fi
