# iprediaos-live-base.ks
#
# Defines the basics for all kickstarts in the iprediaos-live branch

repo --name=iprediaos --baseurl=http://download.ipredia.org/pub/iprediaos/linux/releases/1/Everything/$basearch/os/

# Enable ntpd
services --enabled=ntpd

%packages

# Remove
-transmission*

# Install
ntp

# Rebrand
-fedora-logos
-fedora-release*
iprediaos-logos
iprediaos-release
iprediaos-release-notes

# I2P and IprediaOS packages
i2p
iprediaos-i2p-block-internet
iprediaos-i2p-configuration-proxy
iprediaos-i2psnark-tools

%end
