# Kindle Experiments

## SSH

See: [MobileRead Wiki - USBNetwork](https://wiki.mobileread.com/wiki/USBNetwork)

Enable USBNetwork, connect the Kindle to your computer via USB, and configure the network interface thusly:

<dl>
  <dt>IP</dt>
  <dd>192.168.15.201</dd>
  <dt>Netmask</dt>
  <dd>255.255.255.0</dd>
</dl>

Then connect to the Kindle via SSH (no password):

```
ssh root@192.168.15.244
```

## Search Bar Commands

See: [What commands can be given in the Kindle's search box?](https://ebooks.stackexchange.com/questions/152/what-commands-can-be-given-in-the-kindles-search-box)

| Command | Description      |
| ------- | ---------------- |
| `;711`  | WiFi information |

## Prevent Sleep

1. Connect to the kindle via USB.
2. Create a file (it can be empty) named `TESTD_PREVENT_SCREENSAVER` in the root directory.
3. Reboot.

## `/usr/sbin/eips`

Clear the screen:

```bash
/usr/sbin/eips -c
```

Display an image:

```bash
/usr/sbin/eips -g ./frame.png -f
```

## `lipc-set-prop`

Set frontlight intensity (0-24):

```bash
lipc-set-prop com.lab126.powerd flIntensity 12
```