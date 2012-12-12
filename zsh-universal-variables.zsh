function universal() {
	for i in /tmp/zsh.$(whoami)/*; do 
		echo "$@" >> $i; 
	done;
}

function _omz_universalvariables_preexec() {
	. /tmp/zsh.$(whoami)/${PID} 2> /dev/null
	echo "" > /tmp/zsh.$(whoami)/${PID}
}

function _omz_universalvariables_cleanupPTS() {
	rm /tmp/zsh.$(whoami)/${PID}
}

function _omz_universalvariables_zshexit() {
	_omz_universalvariables_cleanupPTS
}

TRAPINT() {
	_omz_universalvariables_cleanupPTS
}

PTS="pts.${$(tty)##*/}"
PID="pid.$$"

mkdir -p /tmp/zsh.$(whoami)
echo "" > /tmp/zsh.$(whoami)/${PID}
chmod 700 -R /tmp/zsh.$(whoami)

autoload -U add-zsh-hook
add-zsh-hook preexec _omz_universalvariables_preexec
add-zsh-hook zshexit _omz_universalvariables_zshexit
