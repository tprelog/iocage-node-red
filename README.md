<!-- markdownlint-disable MD012 MD041 -->

<!-- BADGE LINKS -->
[plugins-link]:https://www.truenas.com/plugins/
[plugins-shield]:https://img.shields.io/badge/TrueNAS%20CORE-Community%20Plugin-blue?logo=TrueNAS&style=for-the-badge

<!-- CIRRUS CI RESULTS -->
[results-12.2]:https://cirrus-ci.com/github/tprelog/truenas-plugin-index/12.2-RELEASE
[results-13.0]:https://cirrus-ci.com/github/tprelog/truenas-plugin-index/13.0-RELEASE

[red-12.2]:https://img.shields.io/cirrus/github/tprelog/truenas-plugin-index/12.2-RELEASE?task=node-red-12-2&label=12.2-RELEASE&logo=FreeBSD&logoColor=red&style=plastic
[red-13.0]:https://img.shields.io/cirrus/github/tprelog/truenas-plugin-index/13.0-RELEASE?task=node-red-13-0&label=13.0-RELEASE&logo=FreeBSD&logoColor=red&style=plastic

[1]: https://nodered.org/

# iocage-node-red

Artifact file(s) for [Node-RED][1]

[![x][plugins-shield]][plugins-link]

:warning: **This plugin is not actively maintained** - At this time I am no longer using TrueNAS CORE or any iocage jails. As a consequence I may not be aware of, and proactively fixing any issues that could arise. If you're having trouble with the installation of this plugin you can still open an issue and I will do my best to help. While no further development is currently planned, I will continue trying to support this plugin for as long as it remains feasible.

[![x][red-12.2]][results-12.2]

[![x][red-13.0]][results-13.0]

NAME | SERVICE | PORT | USER | CONFIG DIR
:---: | :---: | :---: | :---: | :---: |
Node-RED | nodered | 1880 | nodered |  /var/db/nodered
