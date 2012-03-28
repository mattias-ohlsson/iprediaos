# iprediaos-live-base.ks
#
# Defines the basics for all kickstarts in the iprediaos-live branch

repo --name=iprediaos --baseurl=http://download.ipredia.org/pub/iprediaos/linux/releases/1/Everything/$basearch/os/

# Enable ntpd (does not work, moved to post)
#services --enabled=ntpd.service

%packages

# Remove
-transmission*
-cheese
-sane-backends

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
robert
iprediaos-profile-firefox

%end

%post
# Enable ntpd
/bin/systemctl enable ntpd.service
%end
