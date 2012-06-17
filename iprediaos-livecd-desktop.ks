# iprediaos-livecd-desktop.ks
#
# IprediaOS Desktop

%include iprediaos-live-base.ks
%include /usr/share/spin-kickstarts/fedora-livecd-desktop.ks
%include iprediaos-live-desktop.ks

%packages
# Install packages
iprediaos-gnome-shell-favorite-apps

# Exclude packages
-shotwell
-rhythmbox
-sane-backends-drivers-scanners

%end
