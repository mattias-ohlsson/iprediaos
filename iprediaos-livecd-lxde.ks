# iprediaos-livecd-lxde.ks
#
# IprediaOS LXDE

%include /usr/share/spin-kickstarts/fedora-livecd-lxde.ks
%include iprediaos-live-base.ks


%post
echo " #######################################################"
echo " #######################################################"
echo " ########## iprediaos-livecd-lxde.ks ###################"
echo " #######################################################"

cat >> /etc/rc.d/init.d/livesys << EOF

# Add files to desktop
cp /usr/share/applications/firefox.desktop /home/liveuser/Desktop/
cp /usr/share/applications/i2p-router-console.desktop /home/liveuser/Desktop/
EOF

%end
