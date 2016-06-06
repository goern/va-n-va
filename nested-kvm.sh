#!/bin/bash

echo "options kvm_intel nested=1" >/etc/modprobe.d/kvm-nested.conf

modprobe -r kvm_intel && modprobe kvm_intel

grep Y /sys/module/kvm_intel/parameters/nested
