# Android device tree for TECNO Camon 20 (CK6n)
## 📱 Device Specifications

| Property          | Value                                     |
|-------------------|-------------------------------------------|
| **Device Name**   | Tecno Camon 20                            |
| **Model**         | CK6n                                      |
| **Build Number**  | CK6n-H6929CD-U-OP-250218V1310             |
| **Platform**      | Mediatek Helio G85 (MT6768 / MT6769Z)     |
| **Android**       | 14                                        |
| **Storage**       | 256 GB                                    |
| **RAM**           | 8 GB                                      |
| **Battery**       | Li-Po 5000 mAh, non-removable             |
| **Display**       | 6.67", 1080 x 2400 pixels                 |
| **A/B Device**    | True                                      |
| **Treble Device** | True                                      |
## ⚙️ Purpose of This Device Tree

This device tree was created to build **custom recovery images**, primarily for:

- [OrangeFox Recovery Project](https://orangefox.download)
- [Team Win Recovery Project (TWRP)](https://twrp.me)

> ⚠️ **Note:** At the time of building this device tree, **TWRP did not yet support Android 13+ officially**, so **modifications are required** to make it work.

## 🛠️ Status

| Component       | Status      |
|----------------|-------------|
| Device Tree     | ✅ Compiles |
| OrangeFox Build | ✅ Bootable |
| TWRP Support    | ⚠️ Requires patching for A13+ |

---

## 🔗 Firmware Dump Reference

A firmware dump for **TECNO CK6n** is also available at the following repository:

👉 [rama-firmware-dumps/TECNO-CK6n on GitGud](https://gitgud.io/rama-firmware-dumps/tecno/TECNO-CK6n)

This repository was coincidentally created on the **same day** this device tree was first built. If you're looking for firmware binaries (boot, vbmeta, dtbo, etc.) to assist in porting recovery or debugging device tree issues, this can serve as a valuable resource.

> Feel free to open an issue or pull request if you have questions or contributions regarding integration with this firmware dump.

## 📎 Additional Notes

- MT6768 and MT6769Z are largely identical in SoC architecture.
- Ensure you have **bypassed AVB and verified vbmeta** when flashing recovery.
- Kernel source is not yet fully public; prebuilt DTBO and boot images might be needed.

### ⚠️ AOSP 14 PRODUCT_NAME Issue

- Do **not** use `COMMON_LUNCH_CHOICES := twrp_TECNO-CK6n`.  
- Use `COMMON_LUNCH_CHOICES := twrp_CK6n` instead.  
- Reason: AOSP 14 `lunch` uses the format `<product>-<release>-<variant>`.  
  Extra dashes (like in `TECNO-CK6n`) cause `split("-")` errors.  
- ✅ Example: `lunch twrp_CK6n-ap2a-eng` (ap2a is the default release name used by OrangeFox, following the official [OrangeFox build Wiki](https://wiki.orangefox.tech/en/dev/building))


---

```
#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
```


