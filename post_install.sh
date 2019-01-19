#!/bin/sh

  # pkg install bash git node8 npm-node8 python27
  # git clone https://github.com/tprelog/iocage-node-red.git /root/.iocage-node-red
  # bash /root/.iocage-node-red/post_install.sh standard

export PYTHON=/usr/local/bin/python2.7

usr_id=1880
usr_name=nodered
usr_home=/usr/home/nodered

install -d -g ${usr_id} -o ${usr_id} -m 775 -- ${usr_home}
pw addgroup -g ${usr_id} -n ${usr_name}
pw useradd -u ${usr_id} -n ${usr_name} -d ${usr_home} -s /usr/local/bin/bash -w no -c "Daemon for Node-RED"

/usr/local/bin/npm cache clean --force
/usr/local/bin/npm install -g --unsafe-perm node-red

if [ "$1" = "standard" ]; then
    repo=/root/.iocage-node-red
    rcd=/usr/local/etc/rc.d
    if [ ! -d "${rcd}" ]; then
      mkdir -p "${rcd}"
    fi
    cp "${repo}/overlay/usr/local/etc/rc.d/nodered" ""${rcd}"/nodered"
    cp "${repo}/overlay/etc/motd" "/etc/motd"
fi

chmod +x /usr/local/etc/rc.d/nodered

sysrc -f /etc/rc.conf nodered_enable="YES"
service nodered start 2>/dev/null
