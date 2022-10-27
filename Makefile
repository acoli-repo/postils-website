all:
	if [ ! -e  src ]; then \
		mkdir src; \
	fi;
	
	cd src; \
	if [ ! -e postil-time-machine ]; then \
		git clone https://github.com/acoli-repo/postil-time-machine; \
	else \
		cd postil-time-machine;\
		git pull; \
	fi;

	cd src/postil-time-machine/website; \
	if make; then echo all ok 1>&2; else echo "make issue ?" 1>&2; fi; 
	
	if [ -e docs ]; then \
		rm -rf docs;\
	fi;
	cp -r src/postil-time-machine/website/html/ docs;\
	git add `find docs`;
	git commit -a -m "rebuild site";
	git push;
