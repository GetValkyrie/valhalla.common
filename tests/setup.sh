#/bin/sh

curl https://raw.githubusercontent.com/GetValkyrie/ansible-bootstrap/master/install-ansible.sh | /bin/sh
ansible-galaxy install --ignore-errors Stouts.collectd
target=/etc/ansible/roles/valhalla.common
if [ ! -e $target ]; then
  mkdir -p /etc/ansible/roles/
  ln -s /vagrant/ $target
fi
