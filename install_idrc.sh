#!/usr/bin/env sh

xcode-select -p 1>/dev/null
if [ $? != 0 ]; then
  xcode-select --install
fi

perl -MApp::cpanminus -e 1
if [ $? != 0 ]; then
  curl -L https://cpanmin.us | perl - --sudo App::cpanminus
fi

perl -MCrypt::PBKDF2 -e 1
if [ $? != 0 ]; then
  cpanm Crypt::PBKDF2
fi

cd /usr/local/bin || exit
sudo curl -fsSL https://raw.githubusercontent.com/lizenas/iDevice-Restriction-Cracker/master/install_idrc
mv "idrc.txt" "idrc";
sudo chmod +x idrc

echo "iDevice Restriction Cracker is installed! Now just back up your restricted device to iTunes and enter 'idrc' into Terminal.app"
