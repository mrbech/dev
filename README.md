#Dev Setup
This repository contains my Linux software development setup. In essence it is
a configuration and installation setup for an [Arch
Linux](https://www.archlinux.org/) machine. The setup is uses Vagrant for
management of a VirtualBox VM. Dev setup is purely command line based. The
repository is structured as follows:

- **Vagrantfile**: the vagrant configuration file. Will setup a virtualbox
machine with 65GB HD,  4GB RAM and 2 CPU cores.
- **bootstrap.sh**: the script that sets up everything, is run by vagrant on the
initial up.
- *configs/*: directory for configuration files, a .ssh/ dir can also
be placed here. Will be copied to ~/ on first vagrant up, is available in
/vagrant/configs on the machine.
- *projects/*: initially an empty folder, is shared with the vagrant box and
symlinked to ~/projects.

You can launch everything using `vagrant up`, use `vagrant halt` to shutdown
the machine, `vagrant suspend` to suspend it and `vagrant destroy` to
completely remove everything.

The current development setup includes the following:

- Setup for various languages: gcc, clang, rust, go, mono, nodejs, jdk, ruby,
python2, nodejs
- Pandoc and latex for text editing
- Shell: zsh, tmux
- VIM as text editor, with various plugins including YouCompleteMe with clang,
C#, Go, JavaScript and Rust completion.
- aura for AUR packages.
- Various small utils including, [ys](https://github.com/yaccio/ys) and
  [orchid](https://github.com/yaccio/orchid)
- docker

You are welcome to fork my setup and adjust it to your needs. If you run into
problems with the setup you are welcome to open an issue on Github. If you have
improvements you are also welcome to make a pull request.
