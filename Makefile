PREFIX ?=	${DESTDIR}/etc

all: alphabet

alphabet:
	@mkdir -p ${PREFIX}
	@cp -fp {acme-client,httpd,relayd}.conf ${PREFIX}

install: all

uninstall:
	@rm -f ${PREFIX}/{acme-client,httpd,relayd}.conf

.PHONY: all alphabet install uninstall
