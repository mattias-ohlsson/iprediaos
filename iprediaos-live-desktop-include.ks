# Maintained by the IprediaOS Desktop Team
# http://ipredia.org

%packages
# Install packages
iprediaos-gnome-shell-favorite-apps

%end


%post
echo " #######################################################"
echo " #######################################################"
echo " ########## iprediaos-live-desktop-include.ks ##########"
echo " #######################################################"


# Modify gnome shell favorite-apps created by fedora-live-desktop.ks
sed -i 's:evolution.desktop:i2p-router-console.desktop:g' /etc/rc.d/init.d/livesys
sed -i 's:firefox.desktop:mozilla-firefox.desktop:g' /etc/rc.d/init.d/livesys
sed -i 's:empathy.desktop:xchat.desktop:g' /etc/rc.d/init.d/livesys


# Remove the welcome screen added by fedora-live-desktop
sed -i '/# Make the welcome/,/  fi/d' /etc/rc.d/init.d/livesys


# Force Anaconda to use icons from iprediaos-logos (f17 bug?)
# Create a new file name
ln -s /usr/share/icons/Fedora/scalable/apps/anaconda.svg /usr/share/icons/hicolor/scalable/apps/anaconda-liveinst.svg
# Modify the desktop file
sed -i 's:Icon=anaconda:Icon=anaconda-liveinst:g' /usr/share/applications/liveinst.desktop
# Update icon cache
gtk-update-icon-cache /usr/share/icons/hicolor

%end
