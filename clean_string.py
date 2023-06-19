string1 = "build-essential git wget flex bison gperf python3 python3-pip python3-venv cmake ninja-build ccache libffi-dev libssl-dev dfu-util libusb-1.0-0"
string2 = "git gcc g++ pkg-config libssl-dev libdbus-1-dev libglib2.0-dev libavahi-client-dev ninja-build python3-venv python3-dev python3-pip unzip libgirepository1.0-dev libcairo2-dev libreadline-dev"
string3 = "libconfig-dev libconfig++-dev libncurses-dev libtool-bin libtool libavahi-common-dev libavahi-client-dev libavahi-client3"

string_lst = [string1, string2, string3]

def main():
    set_lst = set()
    for string in string_lst:
        lst = string.split(" ")
        for item in lst:
            set_lst.add(item)
    
    set_lst = sorted(list(set_lst))
    set_lst = "\n".join(set_lst)
    print(set_lst)
    
    
if __name__ == '__main__':
    main()