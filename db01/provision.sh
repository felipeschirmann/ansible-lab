#/bin/sh

cat <<EOT >> /etc/hosts
192.168.56.2 control-node
192.168.56.3 app01
192.168.56.4 db01
EOT

cat << EOT >> /home/vagrant/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDCKHKQXoW3R+1m6o9r9/bkX3n5IKqLNoET8hswpIgGTy7+0pCDodvjPfL8bWh3WQjb8r78nfWcsZ5dNYzHlwoft6b6nVQQnQNmiCwsjal4BnDOUiGT5NxQIOG2p8RkErvyGSYoarK1CNe/iklgahj6uF3G5LWYZOuBRKXR2FmsqfiTknWizvqU2xhoCtjBLpR7843PLZ5+ggmTdjxYs931B8QJE1dSdZ+2hBOfeAyZZs56QCo6sc4AvE+8otJIEasuZK2hxn11S8oeCw/GWCBI+Z7xJh1tpc1k1j2rxCC94UAjFjH7g1GaGhM9GL2iB4qqGLtw9c+SKsBU2IEBCGub vagrant@control-node
EOT

cat << EOT >> /etc/sudoers
vagrant         ALL=(ALL)       NOPASSWD: ALL
EOT

cp /vagrant/sshd_config /etc/ssh/sshd_config

systemctl restart sshd