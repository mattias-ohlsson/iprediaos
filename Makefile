
# Get EUID
EUID		:= $(shell id -u)
CACHEDIR	:= "/tmp/iprediaosbuild"

livecd-desktop: reqroot setenforce0
	livecd-creator -dv --config=iprediaos-livecd-desktop.ks \
	--cache=$(CACHEDIR) && chmod 666 *.iso

reqroot:
ifneq ($(EUID), 0)
	@echo "This script must be run as root" 1>&2
	@exit 1
endif

setenforce0:
	@setenforce 0

clean: 
	@rm -f *.iso
