PYTHON = python3
PREFIX = ~/bin/

dashboard:	libdash/*  bin/*
	$(PYTHON) setup.py install --record installed.txt
	cp bin/* $(PREFIX)

clean:
	rm -vrf build/ dist/ *egg-info libdash/__pycache__ libdash/*.pyc

uninstall:	clean
	rm -vrf `cat installed.txt`
	rm -vf installed.txt
	rm -vf $(PREFIX)/dashboard
