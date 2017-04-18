#!/usr/bin/env sh

xcode-select -p 1>/dev/null
if [ $? != 0 ]; then
  xcode-select --install
fi

perl -MApp::cpanminus -e 1
if [ $? != 0  ]; then
  curl -L https://cpanmin.us | perl - --sudo App::cpanminus
fi

perl -MCrypt::PBKDF2 -e 1
if [ $? != 0 ]; then
  cpanm Crypt::PBKDF2
fi
clear
sudo curl -fsSL https://raw.githubusercontent.com/lizenas/iDevice-Restriction-Cracker/master/idrc.pl > /usr/local/bin/idrc.pl
sudo chmod +x /usr/local/bin/idrc.pl
echo "iDevice Restriction Cracker is installed! Now just back up your restricted device to iTunes and enter 'idrc.pl' into Terminal.app"
