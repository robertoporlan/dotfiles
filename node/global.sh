source common/functions.sh

# nodejs
if which node &> /dev/null; then
    msg_checking "node"
else
    msg_install "node" "git clone git://github.com/ry/node.git"
    brew install node
    echo "OK"
fi

# yeoman
if which yo &> /dev/null; then
    msg_checking "yo"
else
    msg_install "yo" "sudo npm install -g yo"
    npm install -g yo
    echo "OK"
fi

# grunt-cli
if which grunt &> /dev/null; then
    msg_checking "grunt"
else
    msg_install "grunt" "sudo npm install -g grunt-cli"
    npm install -g grunt-cli
    echo "OK"
fi

# bower
if which bower &> /dev/null; then
    msg_checking "bower"
else
    msg_install "bower" "sudo npm install -g bower"
    npm install -g bower
    msg_ok "OK"
fi

# bower-installer
if which bower-installer &> /dev/null; then
    msg_checking "bower-installer"
else
    msg_install "bower-installer" "sudo npm install -g bower-installer"
    npm install -g bower-installer
    msg_ok "OK"
fi

# cordova
if which cordova &> /dev/null; then
    msg_checking "cordova"
else
    msg_install "cordova" "sudo npm install -g cordova"
    npm install -g cordova
    msg_ok "OK"
fi

# phonegap
if which phonegap &> /dev/null; then
    msg_checking "phonegap"
else
    msg_install "phonegap" "sudo npm install -g phonegap"
    npm install -g phonegap
    msg_ok "OK"
fi

# ionic
if which ionic &> /dev/null; then
    msg_checking "ionic"
else
    msg_install "ionic" "sudo npm install -g ionic"
    npm install -g ionic
    msg_ok "OK"
fi

# generators
if which yo &> /dev/null; then
    msg_checking "generators"
else
    msg_install "generator-ionic" "sudo npm install -g generator-ionic"
    npm install -g generator-ionic
    msg_ok "OK"
fi

