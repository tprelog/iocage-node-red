# iocage-node-red
Artifact file(s) for [Node-RED](https://nodered.org/)

#### Node-RED plugin for FreeNAS 11

 - This branch is for FreeNAS 11.2

**Download plugin and install**

    wget -O /tmp/node-red.json https://raw.githubusercontent.com/tprelog/iocage-node-red/11.2-RELEASE/node-red.json
    sudo iocage fetch -P dhcp=on vnet=on bpf=yes -n /tmp/node-red.json --branch '11.2-RELEASE'

###### To see a list of jails as well as their ip address

    sudo iocage list -l
    +-----+-------------+------+-------+----------+-----------------+----------------------+-----+----------+
    | JID |      NAME   | BOOT | STATE |   TYPE   |     RELEASE     |         IP4          | IP6 | TEMPLATE |
    +=====+=============+======+=======+==========+=================+======================+=====+==========+
    |  1  | node-red    |  on  |  up   | jail     | 11.2-RELEASE-p4 | epair0b|192.0.1.142  | -   | -        |
    +-----+-------------+------+-------+----------+-----------------+----------------------+-----+----------+
    |  2  | node-red_2  |  on  |  up   | pluginv2 | 11.2-RELEASE-p4 | epair0b|192.0.1.104  | -   | -        |
    +-----+-------------+------+-------+----------+-----------------+----------------------+-----+----------+

- Tested on FreeNAS-11.2-U1
- More information about [iocage plugins](https://doc.freenas.org/11.2/plugins.html) and [iocage jails](https://doc.freenas.org/11.2/jails.html) can be found in the [FreeNAS guide](https://doc.freenas.org/11.2/intro.html#introduction)
