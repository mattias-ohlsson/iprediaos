RELEASEVER	:= 1

# Get EUID
EUID		:= $(shell id -u)
CACHEDIR	:= "/tmp/iprediaosbuild"

livecd-desktop-i686: reqpackages reqroot setenforce0
	setarch i686 livecd-creator -dv --config=/usr/share/spin-kickstarts/iprediaos-livecd-desktop.ks \
	--releasever=$(RELEASEVER) \
	--fslabel=IprediaOS-$(RELEASEVER)-i686-Live-Desktop \
	--product="IprediaOS $(RELEASEVER)" \
	--title="IprediaOS $(RELEASEVER)" \
	--cache=$(CACHEDIR) && chmod 666 *.iso

livecd-lxde-i686: reqpackages reqroot setenforce0
	setarch i686 livecd-creator -dv --config=/usr/share/spin-kickstarts/iprediaos-livecd-lxde.ks \
	--releasever=$(RELEASEVER) \
	--fslabel=IprediaOS-$(RELEASEVER)-i686-Live-LXDE \
	--product="IprediaOS $(RELEASEVER)" \
	--title="IprediaOS $(RELEASEVER)" \
	--cache=$(CACHEDIR) && chmod 666 *.iso

live-mini-i686: reqpackages reqroot setenforce0
	setarch i686 livecd-creator -dv --config=/usr/share/spin-kickstarts/iprediaos-live-mini.ks \
	--releasever=$(RELEASEVER) \
	--fslabel=IprediaOS-$(RELEASEVER)-i686-Live-Mini \
	--product="IprediaOS $(RELEASEVER)" \
	--title="IprediaOS $(RELEASEVER)" \
	--cache=$(CACHEDIR) && chmod 666 *.iso

livecd-desktop-i686-de_DE: reqpackages reqroot setenforce0
	setarch i686 livecd-creator -dv \
	--config=/usr/share/spin-kickstarts/l10n/iprediaos-livecd-desktop-de_DE.ks \
	--releasever=$(RELEASEVER) \
	--fslabel=IprediaOS-$(RELEASEVER)-i686-Live-Desktop \
	--product="IprediaOS $(RELEASEVER)" \
	--title="IprediaOS $(RELEASEVER)" \
	--cache=$(CACHEDIR) && chmod 666 *.iso 
	# Rename iso file
	mv IprediaOS-$(RELEASEVER)-i686-Live-Desktop.iso \
	IprediaOS-$(RELEASEVER)-i686-Live-Desktop-de_DE.iso

livecd-lxde-i686-de_DE: reqpackages reqroot setenforce0
	setarch i686 livecd-creator -dv \
	--config=/usr/share/spin-kickstarts/l10n/iprediaos-livecd-lxde-de_DE.ks \
	--releasever=$(RELEASEVER) \
	--fslabel=IprediaOS-$(RELEASEVER)-i686-Live-LXDE \
	--product="IprediaOS $(RELEASEVER)" \
	--title="IprediaOS $(RELEASEVER)" \
	--cache=$(CACHEDIR) && chmod 666 *.iso 
	# Rename iso file
	mv IprediaOS-$(RELEASEVER)-i686-Live-LXDE.iso \
	IprediaOS-$(RELEASEVER)-i686-Live-LXDE-de_DE.iso

livecd-desktop-i686-es_ES: reqpackages reqroot setenforce0
	setarch i686 livecd-creator -dv \
	--config=/usr/share/spin-kickstarts/l10n/iprediaos-livecd-desktop-es_ES.ks \
	--releasever=$(RELEASEVER) \
	--fslabel=IprediaOS-$(RELEASEVER)-i686-Live-Desktop \
	--product="IprediaOS $(RELEASEVER)" \
	--title="IprediaOS $(RELEASEVER)" \
	--cache=$(CACHEDIR) && chmod 666 *.iso 
	# Rename iso file
	mv IprediaOS-$(RELEASEVER)-i686-Live-Desktop.iso \
	IprediaOS-$(RELEASEVER)-i686-Live-Desktop-es_ES.iso

livecd-lxde-i686-es_ES: reqpackages reqroot setenforce0
	setarch i686 livecd-creator -dv \
	--config=/usr/share/spin-kickstarts/l10n/iprediaos-livecd-lxde-es_ES.ks \
	--releasever=$(RELEASEVER) \
	--fslabel=IprediaOS-$(RELEASEVER)-i686-Live-LXDE \
	--product="IprediaOS $(RELEASEVER)" \
	--title="IprediaOS $(RELEASEVER)" \
	--cache=$(CACHEDIR) && chmod 666 *.iso 
	# Rename iso file
	mv IprediaOS-$(RELEASEVER)-i686-Live-LXDE.iso \
	IprediaOS-$(RELEASEVER)-i686-Live-LXDE-es_ES.iso

livecd-desktop-i686-ru_RU: reqpackages reqroot setenforce0
	setarch i686 livecd-creator -dv \
	--config=/usr/share/spin-kickstarts/l10n/iprediaos-livecd-desktop-ru_RU.ks \
	--releasever=$(RELEASEVER) \
	--fslabel=IprediaOS-$(RELEASEVER)-i686-Live-Desktop \
	--product="IprediaOS $(RELEASEVER)" \
	--title="IprediaOS $(RELEASEVER)" \
	--cache=$(CACHEDIR) && chmod 666 *.iso 
	# Rename iso file
	mv IprediaOS-$(RELEASEVER)-i686-Live-Desktop.iso \
	IprediaOS-$(RELEASEVER)-i686-Live-Desktop-ru_RU.iso

livecd-lxde-i686-ru_RU: reqpackages reqroot setenforce0
	setarch i686 livecd-creator -dv \
	--config=/usr/share/spin-kickstarts/l10n/iprediaos-livecd-lxde-ru_RU.ks \
	--releasever=$(RELEASEVER) \
	--fslabel=IprediaOS-$(RELEASEVER)-i686-Live-LXDE \
	--product="IprediaOS $(RELEASEVER)" \
	--title="IprediaOS $(RELEASEVER)" \
	--cache=$(CACHEDIR) && chmod 666 *.iso 
	# Rename iso file
	mv IprediaOS-$(RELEASEVER)-i686-Live-LXDE.iso \
	IprediaOS-$(RELEASEVER)-i686-Live-LXDE-ru_RU.iso

livecd-desktop-i686-fr_FR: reqpackages reqroot setenforce0
	setarch i686 livecd-creator -dv \
	--config=/usr/share/spin-kickstarts/l10n/iprediaos-livecd-desktop-fr_FR.ks \
	--releasever=$(RELEASEVER) \
	--fslabel=IprediaOS-$(RELEASEVER)-i686-Live-Desktop \
	--product="IprediaOS $(RELEASEVER)" \
	--title="IprediaOS $(RELEASEVER)" \
	--cache=$(CACHEDIR) && chmod 666 *.iso 
	# Rename iso file
	mv IprediaOS-$(RELEASEVER)-i686-Live-Desktop.iso \
	IprediaOS-$(RELEASEVER)-i686-Live-Desktop-fr_FR.iso

livecd-lxde-i686-fr_FR: reqpackages reqroot setenforce0
	setarch i686 livecd-creator -dv \
	--config=/usr/share/spin-kickstarts/l10n/iprediaos-livecd-lxde-fr_FR.ks \
	--releasever=$(RELEASEVER) \
	--fslabel=IprediaOS-$(RELEASEVER)-i686-Live-LXDE \
	--product="IprediaOS $(RELEASEVER)" \
	--title="IprediaOS $(RELEASEVER)" \
	--cache=$(CACHEDIR) && chmod 666 *.iso 
	# Rename iso file
	mv IprediaOS-$(RELEASEVER)-i686-Live-LXDE.iso \
	IprediaOS-$(RELEASEVER)-i686-Live-LXDE-fr_FR.iso

livecd-desktop-i686-sv_SE: reqpackages reqroot setenforce0
	setarch i686 livecd-creator -dv \
	--config=/usr/share/spin-kickstarts/l10n/iprediaos-livecd-desktop-sv_SE.ks \
	--releasever=$(RELEASEVER) \
	--fslabel=IprediaOS-$(RELEASEVER)-i686-Live-Desktop \
	--product="IprediaOS $(RELEASEVER)" \
	--title="IprediaOS $(RELEASEVER)" \
	--cache=$(CACHEDIR) && chmod 666 *.iso 
	# Rename iso file
	mv IprediaOS-$(RELEASEVER)-i686-Live-Desktop.iso \
	IprediaOS-$(RELEASEVER)-i686-Live-Desktop-sv_SE.iso

livecd-lxde-i686-sv_SE: reqpackages reqroot setenforce0
	setarch i686 livecd-creator -dv \
	--config=/usr/share/spin-kickstarts/l10n/iprediaos-livecd-lxde-sv_SE.ks \
	--releasever=$(RELEASEVER) \
	--fslabel=IprediaOS-$(RELEASEVER)-i686-Live-LXDE \
	--product="IprediaOS $(RELEASEVER)" \
	--title="IprediaOS $(RELEASEVER)" \
	--cache=$(CACHEDIR) && chmod 666 *.iso 
	# Rename iso file
	mv IprediaOS-$(RELEASEVER)-i686-Live-LXDE.iso \
	IprediaOS-$(RELEASEVER)-i686-Live-LXDE-sv_SE.iso

reqroot:
ifneq ($(EUID), 0)
	@echo "This script must be run as root" 1>&2
	@exit 1
endif

reqpackages:
	@rpm -q livecd-tools || (echo "Error: Need livecd-tools" ; exit 2)
	@rpm -q spin-kickstarts || (echo "Error: Need spin-kickstarts" ; exit 2)
	@rpm -q l10n-kickstarts || (echo "Error: Need l10n-kickstarts" ; exit 2)

setenforce0:
	@setenforce 0

clean: 
	@rm -rf *.iso iprediaos/ updates/ fedora/
