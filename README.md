#homeauto-shell-before-after-shairport

Helper scripts to turn the power of the speakers on/off when a Raspberry Pi receives/loses an [Shairport Sync](https://github.com/mikebrady/shairport-sync) AirPlay stream. These scripts makes a super simple HTTP request: 

```
curl -X PUT http://pi-main.local:1880/speaker/${HOSTNAME}/power/off
```

On the receiving side (pi-main.local), I've [Node-RED](http://nodered.org/) running with [node-red-contrib-tellstick](https://github.com/emiloberg/node-red-contrib-tellstick), which will turn the power to the speakers on/off via 433Mhz radio.

#### Config
Run `startup.sh` on new Airplay stream and `shutdown.sh` on lost stream. Shairport Sync reads its settings from the file `/etc/shairport-sync.conf`. These scripts are configued in the properties: `run_this_before_play_begins` and `run_this_after_play_ends`.




