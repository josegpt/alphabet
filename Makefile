PREFIX?=	${DESTDIR}/etc

all: install

alphabet:
	mkdir -p ${PREFIX}
	cp -fp httpd.conf ${PREFIX}

install: all

uninstall:
	rm -f ${PREFIX}/httpd.conf

.PHONY: all install uninstall
