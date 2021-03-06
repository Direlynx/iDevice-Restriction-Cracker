# iOS Unrestrictor

Cracks the iOS restrictions passcode. It works on any iOS device, be it the iPhone 3GS or the iPad Air 2. Written in Perl 5.18, using the [Crypt::PBKDF2](https://github.com/arodland/Crypt-PBKDF2) module to decrypt the [SHA1](https://en.wikipedia.org/wiki/SHA-1) encoded password.

## Install

I've included a handy dandy install script (```install_idrc.sh```) that checks for and installs the necessary dependencies. You may need to change the permissions of the installer in order for it to function, like so:
```
cd /path/to/install_idrc.sh
chmod +x install_idrc.sh
```
While ```idrc.pl``` is able to be run from anywhere, ```install_idrc.sh``` by default installs it to /usr/local/bin so that it works as a terminal command.

## Dependencies

_Mac OS X only!_

1. An account of at least administrator permissions level. Must be able to use `sudo`.
2. Xcode Command Line Tools - Installed by ```install_idrc.sh```
3. [App::cpanminus](http://search.cpan.org/~miyagawa/App-cpanminus-1.7040/lib/App/cpanminus.pm) - Installed by ```install_idrc.sh```
4. [Crypt::PBKDF2](http://search.cpan.org/~arodland/Crypt-PBKDF2-0.150900/lib/Crypt/PBKDF2.pm) - Installed by ```install_idrc.sh```

## Instructions

1. Read the section titled "Install" in this readme
2. Sync the restricted device to iTunes
3. open /Applications/Utilities/Terminal.app and enter `idrc.pl`
4. Wait ~5 seconds
5. ???
6. Profit!
