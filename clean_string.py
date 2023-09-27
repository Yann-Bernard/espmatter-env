pkgs1 = "build-essential git wget flex bison gperf python3 python3-pip python3-venv cmake ninja-build ccache libffi-dev libssl-dev dfu-util libusb-1.0-0"
pkgs2 = "git gcc g++ pkg-config libssl-dev libdbus-1-dev libglib2.0-dev libavahi-client-dev ninja-build python3-venv python3-dev python3-pip unzip libgirepository1.0-dev libcairo2-dev libreadline-dev"
pkgs3 = "libconfig-dev libconfig++-dev libncurses-dev libtool-bin libtool libavahi-common-dev libavahi-client-dev libavahi-client3"
pkgs4 = "git gcc g++ pkg-config libssl-dev libdbus-1-dev libglib2.0-dev libavahi-client-dev ninja-build python3-venv python3-dev python3-pip unzip libgirepository1.0-dev libcairo2-dev libreadline-dev libsdl2-dev"

pkgs_lst = [pkgs1, pkgs2, pkgs3, pkgs4]

def main():
    set_lst = set()
    for pkg in pkgs_lst:
        lst = pkg.split(" ")
        for item in lst:
            set_lst.add(item)
    
    set_lst = sorted(list(set_lst))
    set_lst = " ".join(set_lst)
    print(set_lst)
    
    
if __name__ == '__main__':
    main()