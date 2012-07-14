# iprediaos-live-base.ks
#
# Defines the basics for all kickstarts in the iprediaos-live branch

repo --name=iprediaos --baseurl=http://download.ipredia.org/pub/iprediaos/linux/releases/1/Everything/$basearch/os/


%packages

# Remove
-transmission*
-cheese
-sane-backends

-pidgin
# Remove empathy (we need irc ulrs from command line)
-empathy
# Remove smolt (sent hardware profiles)
-smolt
-smolt-firstboot

# Install
# Script in chroot (add liveuser to the wireshark group)
wireshark-gnome

# Rebrand
-fedora-logos
-fedora-release*
iprediaos-logos
iprediaos-release
iprediaos-release-notes
iprediaos-bookmarks

# I2P and IprediaOS packages
i2p
i2p-desktop
iprediaos-i2p-configuration-proxy
robert
iprediaos-profile-firefox
xchat

%end

%post
echo " #######################################################"
echo " #######################################################"
echo " ########## iprediaos-live-base.ks #####################"
echo " #######################################################"

# Temporary fix for: after install I see SYSFONT=True rather than a font name
# https://bugzilla.redhat.com/show_bug.cgi?id=799401
# Apply this commit: 
# git.fedorahosted.org/git/?p=anaconda.git;a=commit;h=dcc9026b9b47e961608b9a3028f3b9451ae8e0f0
sed -i 's:== "none":== "False":g' /usr/lib/python2.7/site-packages/pyanaconda/language.py
sed -i 's:self.info\["SYSFONT"\] = self.localeInfo\[self._systemLang\]\[2\]:self.info\["SYSFONT"\] = "latarcyrheb-sun16":g' /usr/lib/python2.7/site-packages/pyanaconda/language.py

# Add ipredia sites to published addressbook
cat > /usr/bin/i2p/eepsite/docroot/hosts.txt << EOF
ipredia.i2p=Mt9IEnn2aUJgdYSOqhuLttPxPeE8uorzfS9Yqfkvsn1mBy2B0hxDW~j5XEQDLaYVXQDWYyoF3KDK7RzvWoNxueJTmUefxITtbUE0gCYKxo1Vwd-wzCQlOk~9XlMwr3tGoJ2xwlM9i5ehJcupLgPugtXg2n1~bjJO8-aMbb0oFvLnh88Qglxo9NFdz1aiLpODW1QlOhWjiyNia43ejp6bzCT4~Br7i514UQ7JB28kO0EVhLy2SjfVsrOhoFnx4A5eIpePZWj2YUgWsLVvYQ8Yq~KeC2MMdFLDVK3bOrGQVAm1sq-s-DFMv5pg1bUty0zFdcjqYVk50t5Bp2NnOygYPlrxkxuaCv8S0923-noQrereIQ~8H1WDWgKbpgCwDsEubivwf1oYLt8cHwNrU6s0wKvYD-HfHOJTFlnuTfSquxhn-nSFJVd7dlK7DjftlpMmn1fktqfiT6ml2X7svQABrJxIgf3T56DIDPpOUdYMa53Eu81I4S9hq75PgTl5RwHkAAAA
download.ipredia.i2p=SwLojfEaacNI1QzzgM13DuFJ0ZADadq860DizmuJGWlW85vLlU0RiSJgjcOeVXrhrT1djH2NTxUh3OEJyypgt6xjC04n6V3T7D8cCgmGVDotRqyQk7RM4JPWJc6x72Ik5Jkn7f5OZYLMyTNZTzYndh90SkV7-QHmDv5oEg7Kih1nBvg0wqCDVOZRLy1TrXVU6RZdEJmeCr1E2~zSpuuhMfgC7n2SNqXYWUNT~8JU2oIq0FPxG4RuhcJ03uUnxZW0BWvTGODLVr83BZuuVJFA7zuR-ozCXnNmKtxNDCmgFLscqJAJrqEgZSPqwQxBIH-vapkKnQ21W~lyB98mfZ1nmijj0XyTyaIfr6-H4u3q71y94YLVSG-O90WTkpbKmV5OQaKaRNyZk-YLywV0n6sQbs-5sdv7oCqlGPMA4ePc65GgJ6-4wzmyej8~f1e-jBgk1GmGcST7hjufWA6VmNZ-6v95WAyNw6vfRsA02YW0279qtYZcMh7QdCYd0vhubdwvAAAA
EOF

# Add ipredia sites to master addressbook
cat >> /usr/bin/i2p/hosts.txt << EOF
ipredia.i2p=Mt9IEnn2aUJgdYSOqhuLttPxPeE8uorzfS9Yqfkvsn1mBy2B0hxDW~j5XEQDLaYVXQDWYyoF3KDK7RzvWoNxueJTmUefxITtbUE0gCYKxo1Vwd-wzCQlOk~9XlMwr3tGoJ2xwlM9i5ehJcupLgPugtXg2n1~bjJO8-aMbb0oFvLnh88Qglxo9NFdz1aiLpODW1QlOhWjiyNia43ejp6bzCT4~Br7i514UQ7JB28kO0EVhLy2SjfVsrOhoFnx4A5eIpePZWj2YUgWsLVvYQ8Yq~KeC2MMdFLDVK3bOrGQVAm1sq-s-DFMv5pg1bUty0zFdcjqYVk50t5Bp2NnOygYPlrxkxuaCv8S0923-noQrereIQ~8H1WDWgKbpgCwDsEubivwf1oYLt8cHwNrU6s0wKvYD-HfHOJTFlnuTfSquxhn-nSFJVd7dlK7DjftlpMmn1fktqfiT6ml2X7svQABrJxIgf3T56DIDPpOUdYMa53Eu81I4S9hq75PgTl5RwHkAAAA
download.ipredia.i2p=SwLojfEaacNI1QzzgM13DuFJ0ZADadq860DizmuJGWlW85vLlU0RiSJgjcOeVXrhrT1djH2NTxUh3OEJyypgt6xjC04n6V3T7D8cCgmGVDotRqyQk7RM4JPWJc6x72Ik5Jkn7f5OZYLMyTNZTzYndh90SkV7-QHmDv5oEg7Kih1nBvg0wqCDVOZRLy1TrXVU6RZdEJmeCr1E2~zSpuuhMfgC7n2SNqXYWUNT~8JU2oIq0FPxG4RuhcJ03uUnxZW0BWvTGODLVr83BZuuVJFA7zuR-ozCXnNmKtxNDCmgFLscqJAJrqEgZSPqwQxBIH-vapkKnQ21W~lyB98mfZ1nmijj0XyTyaIfr6-H4u3q71y94YLVSG-O90WTkpbKmV5OQaKaRNyZk-YLywV0n6sQbs-5sdv7oCqlGPMA4ePc65GgJ6-4wzmyej8~f1e-jBgk1GmGcST7hjufWA6VmNZ-6v95WAyNw6vfRsA02YW0279qtYZcMh7QdCYd0vhubdwvAAAA
EOF


# Add iprediaos modifications to livesys start script
cat >> /etc/rc.d/init.d/livesys << EOF

# Make i2psnark usable
# - change download folder
# - change security settings
#
# change i2psnarks download folder
sed -i 's:i2psnark.dir=i2psnark:i2psnark.dir=/home/liveuser/I2PSnark Downloads:g' /usr/bin/i2p/i2psnark.config
# use insecure files and change umask (we are safe without mod 600)
echo "i2p.insecureFiles=true" >> /usr/bin/i2p/router.config
sed -i '2 a umask 007' /etc/init.d/i2p
# create the download folder
mkdir /home/liveuser/I2PSnark\ Downloads
# change group and owner on the folder
chown liveuser:liveuser /home/liveuser/I2PSnark\ Downloads
# give i2p access to liveusers home folder
setfacl -m g:i2p:x /home/liveuser
# give i2p and liveuser full access to every file in I2PSnark Downloads
setfacl -m g:i2p:rwx,d:g:i2p:rwx,g:liveuser:rwx,d:g:liveuser:rwx /home/liveuser/I2PSnark\ Downloads

# Add liveuser to wireshark group
/usr/sbin/usermod -a -G wireshark liveuser

EOF

# Add rpm gpg keys from iprediaos-release
# Example from fedora-live-base.ks
#
# work around for poor key import UI in PackageKit
rm -f /var/lib/rpm/__db*
rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-iprediaos
# Note that running rpm recreates the rpm db files which aren't needed or wanted
rm -f /var/lib/rpm/__db*

%end
