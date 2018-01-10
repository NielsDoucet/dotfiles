#!/bin/sh
bindJavaAlias() {
    local JAVA_V=$(/usr/libexec/java_home -F -v$1 2> /dev/null)

    if [ ! -z $JAVA_V ]; then
        unalias java$2 >/dev/null 2>/dev/null
        alias java$2="export JAVA_HOME=${JAVA_V}; java -version"
    else
        unalias java$2 >/dev/null 2>/dev/null
    fi
}

bindJavaAlias '1.7' '7'
bindJavaAlias '1.8' '8'
bindJavaAlias '9' '9'
