# packages
rajeev's ubuntu packages

Add key and source package list

    curl -s --compressed "https://rajeev-t.github.io/packages/rajeev_pub.gpg" | sudo apt-key add -

    sudo curl -s --compressed -o /etc/apt/sources.list.d/rajeevs_packages.list "https://rajeev-t.github.io/packages/rajeevs_packages.list"

Installation

    sudo apt update
    
    sudo apt install cpp-intr