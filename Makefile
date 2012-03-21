RELEASEVER	:= 1

# Get EUID
EUID		:= $(shell id -u)
CACHEDIR	:= "/tmp/iprediaosbuild"

livecd-desktop-i686: reqpackages reqroot setenforce0
	setarch i686 livecd-creator -dv --config=iprediaos-livecd-desktop.ks \
	--fslabel=IprediaOS-$(RELEASEVER)-i686-Live-Desktop \
	--product=IprediaOSProd \
	--title=IprediaOSTitle \
	--cache=$(CACHEDIR) && chmod 666 *.iso

livecd-lxde-i686: reppackages reqroot setenforce0
	setarch i686 livecd-creator -dv --config=iprediaos-livecd-lxde.ks \
        --fslabel=IprediaOS-$(RELEASEVER)-i686-Live-LXDE \
	--product=IprediaOSProd \
        --title=IprediaOSTitle \
        --cache=$(CACHEDIR) && chmod 666 *.iso

reqroot:
ifneq ($(EUID), 0)
	@echo "This script must be run as root" 1>&2
	@exit 1
endif

reqpackages:
	@rpm -q livecd-tools || (echo "Error: Need livecd-tools" ; exit 2)
	@rpm -q spin-kickstarts || (echo "Error: Need spin-kickstarts" ; exit 2)

setenforce0:
	@setenforce 0

clean: 
	@rm -rf *.iso iprediaos/ updates/ fedora/
