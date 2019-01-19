# iocage-node-red
Artifact file(s) for [Node-RED](https://nodered.org/)

---
## iocage-plugin-node-red

 - This script will by default create an iocage-plugin running Node-RED 

**Download plugin and install**

    wget -O /tmp/node-red.json https://raw.githubusercontent.com/tprelog/iocage-node-red.git/master/node-red.json
    sudo iocage fetch -P dhcp=on vnet=on bpf=yes -n /tmp/node-red.json --branch 'master'

---
---
### iocage-jail-node-red

 - This scrpit can also be used to create a standard-jail for Node-RED 

**Download pkg-list and create a jail using it to install requirements**

    wget -O /tmp/pkglist.json https://raw.githubusercontent.com/tprelog/iocage-node-red.git/master/pkg-list.json
    sudo iocage create -r 11.2-RELEASE boot=on dhcp=on bpf=yes vnet=on -p /tmp/pkglist.json -n node-red

**Git script and install**

    sudo iocage exec node-red git clone https://github.com/tprelog/iocage-node-red.git /root/.iocage-node-red
    sudo iocage exec node-red sh /root/.iocage-node-red/post_install.sh standard

---

###### To see a list of jails as well as their ip address

    sudo iocage list -l
    +-----+-------------+------+-------+----------+-----------------+----------------------+-----+----------+
    | JID |      NAME   | BOOT | STATE |   TYPE   |     RELEASE     |         IP4          | IP6 | TEMPLATE |
    +=====+=============+======+=======+==========+=================+======================+=====+==========+
    |  1  | node-red    |  on  |  up   | jail     | 11.2-RELEASE-p4 | epair0b|192.0.1.142  | -   | -        |
    +-----+-------------+------+-------+----------+-----------------+----------------------+-----+----------+
    |  2  | node-red_2  |  on  |  up   | pluginv2 | 11.2-RELEASE-p4 | epair0b|192.0.1.104  | -   | -        |
    +-----+-------------+------+-------+----------+-----------------+----------------------+-----+----------+


Tested on FreeNAS-11.2-U1  
More information about [iocage plugins](https://doc.freenas.org/11.2/plugins.html) and [iocage jails](https://doc.freenas.org/11.2/jails.html) can be found in the [FreeNAS guide](https://doc.freenas.org/11.2/intro.html#introduction)  
