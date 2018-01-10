#!/bin/sh
shopt -s extglob
extraVar=''
for var in "$@"
do
    case "$var" in
        -l|--local)
            extraVar="${extraVar} -PenableMavenLocal=true"
            ;;
        -r|--rerun)
            extraVar="${extraVar} --rerun-tasks"
            ;;
        -d|--debug)
            extraVar="${extraVar} --debug"
            ;;
        -s|--stacktrace)
            extraVar="${extraVar} --stacktrace"
            ;;
	*(-i=*|--include=*))
	    extraVar="${extraVar} --include-build ../$(echo "$var" | sed -E 's/.*=(.*)/\1/')"
	    ;;
    esac
done

export extraVar
