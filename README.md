# son-install
The SONATA Service Platform is based on a micro-service architecture and therefore comprises several independend service systems, like a RabbitMQ service, a [Gatekeeper service](https://github.com/sonata-nfv/son-gkeeper), a [MANO service](https://github.com/sonata-nfv/son-mano-framework), several databases, etc. In oder to simplify the installation and configuration of the SONATA Service Platform, we provide several scripts, based on the [Ansible IT automation engine](https://www.ansible.com), to automate this process.

Using a single configuration file and a single install script, one can install the SONATA Service Platform by a single simple command. To this end, the installation script downloads the current components from the SONATA GitHub repositories and installs them on the target machine(s).

---
#### Lead Developers

The following lead developers are responsible for this repository and have admin rights. They can, for example, merge pull requests.

- Alberto Rocha (arocha7)
- Michael Bredel (mbredel)
