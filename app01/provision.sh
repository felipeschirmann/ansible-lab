#/bin/sh

cat <<EOT >> /etc/hosts
192.168.56.2 control-node
192.168.56.3 app01
192.168.56.4 db01
EOT

cat << EOT >> /home/vagrant/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDoZTegm9OqyBxKFHFcfeMF7fNJXHHYLrfgDmCzpRi6GkaPvziXNii97KkOEUe43+bwR++H5U4hD9qIjAlMG2UghniHz4whQTn/x7x4JkJilHugsAQf4N9hVJJqMljHyPxEqb1/WX6MVM4sRs5Ge3Z5XKbBOV6InbkMJ18nKzfIXKSVsvc1H1IWtBdjNn+osLrnI5l9FzXTfyld9sNF8qBFOf7LMIGPtOJQFYgwUJ1hJWQAJP+io56vROW/WlnKG9TPehcZ8SR3hz8t1kkB6VhwurtGgstrJubEZMItk8JL7P8epxQl6q42pmxntmWGgm1IypyntKFcNt7tQSJ55ErP vagrant@control-node
EOT

cat << EOT >> /etc/sudoers
vagrant         ALL=(ALL)       NOPASSWD: ALL
EOT

cp /vagrant/sshd_config /etc/ssh/sshd_config

systemctl restart sshd