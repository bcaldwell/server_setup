install() {
    if which apt-get > /dev/null; then
        apt-get
    else
        yum
    fi
}
