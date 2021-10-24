#! /bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install mysql

brew services start mysql

brew install php

brew services start php

cd ~/

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"

php composer-setup.php

php -r "unlink('composer-setup.php');"

mv composer.phar /usr/local/bin/composer

composer global require laravel/valet

~/.composer/vendor/bin/valet install

mkdir ~/Projects

cd ~/Projects

~/.composer/vendor/bin/Valet park

brew install nodejs

npm install -g @vue/cli

brew install wget

cd ~/Projects

composer create-project laravel/laravel valettest

open http://valettest.test

cd ~/Desktop
 
# curl -L https://tableplus.com/release/osx/tableplus_latest

#curl -L https://www.jetbrains.com/phpstorm/download/download-thanks.html?platform=mac

# curl -L https://www.jetbrains.com/webstorm/download/download-thanks.html?platform=mac

# echo "\nPlease install the dmg packages in the Desktop"

# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# echo "export PATH=$PATH:$HOME/.composer/vendor/bin" >> ~/.zshrc

# source ~/.zshrc

 # function installdmg {
 #     set -x
 #     tempd=$(mktemp -d)
 #     curl -L $1 > $tempd/pkg.dmg
 #     listing=$(sudo hdiutil attach $tempd/pkg.dmg | grep Volumes)
 #     volume=$(echo "$listing" | cut -f 3)
 #     if [ -e "$volume"/*.app ]; then
 #       sudo cp -rf "$volume"/*.app /Applications
 #     elif [ -e "$volume"/*.pkg ]; then
 #       package=$(ls -1 "$volume" | grep .pkg | head -1)
 #       sudo installer -pkg "$volume"/"$package" -target /
 #     fi
 #     sudo hdiutil detach "$(echo "$listing" | cut -f 1)"
 #     rm -rf $tempd
 #     set +x
 # }

 # installdmg https://tableplus.com/release/osx/tableplus_latest
