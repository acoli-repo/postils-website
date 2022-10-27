all:
	if [ -e html ]; then rm -rf html; fi
	bin/bootstrap
	xterm -e bin/start &
	sleep 10
	mkdir html;
	cd html;\
	wget -r -np -nH http://127.0.0.1:4061/postil-time-machine/

