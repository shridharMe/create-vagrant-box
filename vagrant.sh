
useradd -m vagrant
echo -e "vagrant\nvagrant" | passwd
echo -e "vagrant\nvagrant" | passwd vagrant
cat >> /etc/sudoers <<EOF
vagrant ALL=(ALL) NOPASSWD: ALL
EOF
su - vagrant -c "true"
wget --no-check-certificate 'https://raw.githubusercontent.com/hashicorp/vagrant/main/keys/vagrant.pub' -O /home/vagrant/.ssh/authorized_keys
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant /home/vagrant/.ssh
echo 'Welcome to your Vagrant-built NixOS virtual machine.' > /etc/
