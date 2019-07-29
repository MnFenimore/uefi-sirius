#!/bin/bash
# based on the instructions from edk2-platform
set -e
. build_common.sh
# not actually GCC5; it's GCC7 on Ubuntu 18.04.
GCC5_AARCH64_PREFIX=aarch64-linux-gnu- build -s -n 0 -a AARCH64 -t GCC5 -p XiaomiMI8SEPkg/XiaomiMI8SEPkg.dsc
gzip -c < workspace/Build/XiaomiMI8SEPkg/DEBUG_GCC5/FV/XIAOMIMI8SEPKG_UEFI.fd >uefi.img
cat sirius.dtb >>uefi.img
