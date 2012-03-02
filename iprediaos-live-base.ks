# iprediaos-live-base.ks
#
# Defines the basics for all kickstarts in the iprediaos-live branch

repo --name=iprediaos --baseurl=http://dl.dropbox.com/u/3922090/iprediaos/repo/

%packages

# Rebrand
-fedora-logos
-fedora-release*
iprediaos-logos
iprediaos-release
iprediaos-release-notes

# I2P and IprediaOS packages
i2p
iprediaos-i2p-block-internet

%end
