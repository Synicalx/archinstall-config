# archinstall-config
My user_config for archinstall, only really suitable as-is for a single 1TB disk system using AMD. With a few small changes it would also be fine for other single disk systems.

This will;

1. Install two kernels, one regular and one LTS
2. Install KDE and a few other useful packages I use (including Steam)
3. Format an NVMe with BTRFS and a very simple layout

## How

```
archinstall --config  https://raw.githubusercontent.com/Synicalx/archinstall-config/main/user_configuration.json
```

Or clone this repo locally during setup.

Either way you'll probably want to set this up over wifi, something like this should probably work;

```sh
# start iwctl, should be on the live image
iwctl

# show your NIC's, its probably something like 'wlan0'
device list
station wlan0 scan
station wlan0 get-networks

# connect to your network
station wlan0 connect <your SSID>
```

There is no user config or root password specified here, you will probably want to set those up interactively yourself inside `archinstall`.
