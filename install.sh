install() {
    if which apt-get > /dev/null; then
        sudo apt-get $@
    else
        sudo yum $@
    fi
}
