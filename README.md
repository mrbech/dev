#MrBech Dev Setup
This repository contains my Linux software development setup. In essence its a
glorified configuration and installation setup for an [Arch Linux](https://www.archlinux.org/) 
machine. The setup is build to use Vagrant for management a VirtualBox VM, but
can with little modification to the bootstrap.sh script be used on any Arch
Linux machine. Note that everything used is purely command line based. The
repository is structured as follows:

- *Vagrantfile*: the vagrant configuration file. Will setup a virtualbox machine
  with 65GB HD,  4GB RAM and 2 CPU cores, it will also grab a private network ip
  that can be accessed from your local machine (use ifconfig to find the ip on
  the machine).
- *bootstrap.sh*: this is where the magic happens, a full script that sets up
  everything, is run by vagrant on the initial up.
- *configs/*: directory with all my configuration files, a .ssh/ dir can also be
  placed here. Will be copied to ~/ on first vagrant up, is available in
  /vagrant/configs on the machine.
- *projects/*: initially an empty folder, is shared with the vagrant box and
  symlinked to ~/projects, will also contain the GOPATH folder.

You can launch everything using `vagrant up` (will boot the machine after
halt/suspend as well), use `vagrant halt` to shutdown the machine, `vagrant
suspend` to suspend it for quick reboot and `vagrant destroy` to completely remove
everything.

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
problems with setup, you are welcome to open an issue on Github. If you have
improvements you are also welcome to make a pull request. I will be actively
updating the setup as I see fit.
