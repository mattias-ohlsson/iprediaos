
# Get EUID
EUID		:= $(shell id -u)
CACHEDIR	:= "/tmp/iprediaosbuild"

livecd-desktop: reqroot
	livecd-creator -dv --config=iprediaos-livecd-desktop.ks \
	--cache=$(CACHEDIR) && chmod 666 *.iso

reqroot:
ifneq ($(EUID), 0)
	@echo "This script must be run as root" 1>&2
	@exit 1
endif

clean: 
	@rm -f *.iso
