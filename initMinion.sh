mkdir -p /etc/salt/pki/`hostname`
if [ ! -f /etc/salt/pki/`hostname`/minion.pub ]; then
	cd /etc/salt/pki/`hostname`
	salt-key --gen-keys=`hostname`
fi
salt-minion
