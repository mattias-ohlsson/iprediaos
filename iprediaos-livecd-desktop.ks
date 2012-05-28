# iprediaos-livecd-desktop.ks
#
# IprediaOS Desktop

%include iprediaos-live-base.ks
%include /usr/share/spin-kickstarts/fedora-livecd-desktop.ks

%packages

# Exclude packages
-shotwell
-rhythmbox
-sane-backends-drivers-scanners

%end
