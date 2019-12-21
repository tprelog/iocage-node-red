# iocage-node-red
Artifact file(s) for [Node-RED](https://nodered.org/)

#### Node-RED plugin for FreeNAS 11

 - This branch is for FreeNAS 11.3

**Download plugin and install**

    wget -O /tmp/node-red.json https://raw.githubusercontent.com/tprelog/iocage-node-red/11.3-RELEASE/node-red.json
    sudo iocage fetch -P /tmp/node-red.json --branch '11.3-RELEASE'


##### To see a list of jails as well as their ip address

    sudo iocage list -l
    +-----+------------+------+-------+----------+-----------------+----------------------+-----+----------+
    | JID |    NAME    | BOOT | STATE |   TYPE   |     RELEASE     |         IP4          | IP6 | TEMPLATE |
    +=====+============+======+=======+==========+=================+======================+=====+==========+
    |  1  |  node-red  |  on  |  up   | pluginv2 | 11.3-RELEASE-p5 | epair0b|192.0.1.104  | -   | -        |
    +-----+------------+------+-------+----------+-----------------+----------------------+-----+----------+

- Last tested on FreeNAS-11.3-RC1
- More information about [iocage plugins](https://doc.freenas.org/11.3/plugins.html) and [iocage jails](https://doc.freenas.org/11.3/jails.html) can be found in the [FreeNAS guide](https://doc.freenas.org/11.3/intro.html#introduction)
