PREFIX?=	${DESTDIR}/etc

all: install

install:
	mkdir -p ${PREFIX}
	cp -fp httpd.conf ${PREFIX}

uninstall:
	rm -f ${PREFIX}/httpd.conf ${HTDOCSDIR}/*.html

.PHONY: all install uninstall
