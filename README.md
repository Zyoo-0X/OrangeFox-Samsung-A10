# Device tree for SM-A105G (`a10`)

| | |
|---|---|
| SoC | Platform: `unknown` |
| Kernel Header Version | v1 |
| Page Size | 2048 |
| Kernel Base | `0x10000000` |
| Android / Patch | 11.0.0 (Patch: 2022-12) |
| Layout | non-A/B, system-as-root, recovery build (`twrp_a10`) |

Generated automatically by ZooyLyy Tool from stock boot image.
Targets a TWRP-style recovery build (`twrp_a10`) with a prebuilt kernel.

## Layout
- `BoardConfig.mk`, `twrp_a10.mk`, `AndroidProducts.mk`, `device.mk` - build config
- `prebuilt/kernel` - stock kernel from `boot.img`
- `recovery.fstab` - partition table configuration

## Build (example)
```bash
git clone <this repo> device/samsung/a10
. build/envsetup.sh && lunch twrp_a10-eng && mka recoveryimage
```

## Values to verify on a real device
- `TW_BRIGHTNESS_PATH` and `TW_THEME`
- `BOARD_SYSTEMIMAGE_PARTITION_SIZE` / userdata size (`cat /proc/partitions`)
- Flash via Odin (AP tar); Samsung bootloaders may need the `SEANDROIDENFORCE` trailer
