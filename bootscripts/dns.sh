# this file modifies the resolv.conf file located in /etc/; if the usb stick is not inserted
# (and this file is hence unavailable, the dns in /etc/resolv.conf will be used instead.
# note that besides setting the DNS per machine in /etc/resolv.conf, you could also set it at your
# router configuration webpage (in case you use one). If such functionality is not present, you can
# change the firmware to an open-source router firmware (such as OpenWrt, ...)

+chattr -i /etc/resolv.conf
sed -i 's/???.???.?.?/input_your_new_IP_here/g' resolv.conf
+chattr +i /etc/resolv.conf
