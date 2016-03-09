USRBINDIR=${DESTDIR}/usr/bin
USRMANDIR=${DESTDIR}/usr/man
MODE=0644
all: files

install: all
files:
	cp ab-chroot ${USRBINDIR}/ 
	install -g 0 -o 0 -m ${MODE} man/ab-chroot.8 ${USRMANDIR}/man8/
	gzip ${USRMANDIR}/man8/ab-chroot.8

uninstall:
	rm -rf ${USRBINDIR}/ab-chroot
	rm -rf ${USRMANDIR}/man8/ab-chroot.8

.PHONY: all install files uninstall
