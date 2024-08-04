# archinstall-config
My user_config for archinstall, only really suitable for a single 1TB disk system

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
