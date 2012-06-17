# Maintained by the IprediaOS Desktop Team
# http://ipredia.org

%include iprediaos-live-base.ks
%include /usr/share/spin-kickstarts/fedora-live-desktop.ks


%post

## Override fedora-live-desktop.ks
# This is a modified section from fedora-live-desktop.ks
# Modified: 
#  - org.gnome.shell favorite-apps (apps string from 
#    iprediaos-gnome-shell-favorite-apps)
#  - skip fedora-welcome
#
# make the installer show up
if [ -f /usr/share/applications/liveinst.desktop ]; then
  # Show harddisk install in shell dash
  sed -i -e 's/NoDisplay=true/NoDisplay=false/' /usr/share/applications/liveinst.desktop ""
  # need to move it to anaconda.desktop to make shell happy
  mv /usr/share/applications/liveinst.desktop /usr/share/applications/anaconda.desktop

  cat >> /usr/share/glib-2.0/schemas/org.gnome.shell.gschema.override << FOE
[org.gnome.shell]
favorite-apps=['mozilla-firefox.desktop', 'i2p.desktop', 'evolution.desktop', 'rhythmbox.desktop', 'nautilus.desktop', 'anaconda.desktop']
FOE

fi

%end
