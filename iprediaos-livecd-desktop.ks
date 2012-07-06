# iprediaos-livecd-desktop.ks
#
# IprediaOS Desktop

%include /usr/share/spin-kickstarts/fedora-livecd-desktop.ks
%include iprediaos-live-desktop-include.ks
%include iprediaos-live-base.ks


%packages
# Install packages
iprediaos-gnome-shell-favorite-apps

# Exclude packages
-shotwell
-rhythmbox
-sane-backends-drivers-scanners
-gutenprint

# Exclude packages (games)
-gnome-games
-aisleriot

%end
