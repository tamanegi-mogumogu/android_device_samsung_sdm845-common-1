[efs/]
mode: 0771
user: AID_SYSTEM
group: AID_RADIO
caps: 0

[system/product/vendor_overlay/*/bin/*]
mode: 0755
user: AID_ROOT
group: AID_SHELL
caps: 0

[system/bin/cnss-daemon]
mode: 0755
user: AID_BLUETOOTH
group: AID_BLUETOOTH
caps: NET_BIND_SERVICE

[system/vendor/bin/hw/android.hardware.bluetooth@1.0-service-qti]
mode: 0755
user: AID_SYSTEM
group: AID_SYSTEM
caps: NET_ADMIN BLOCK_SUSPEND

[system/vendor/bin/hw/android.hardware.bluetooth@1.0-service-qti-lazy]
mode: 0755
user: AID_SYSTEM
group: AID_SYSTEM
caps: NET_ADMIN BLOCK_SUSPEND

[system/vendor/bin/wcnss_filter]
mode: 0755
user: AID_BLUETOOTH
group: AID_BLUETOOTH
caps: BLOCK_SUSPEND

[vendor/bin/hw/android.hardware.bluetooth@1.0-service-qti]
mode: 0755
user: AID_BLUETOOTH
group: AID_BLUETOOTH
caps: NET_ADMIN BLOCK_SUSPEND

[vendor/bin/hw/android.hardware.bluetooth@1.0-service-qti-lazy]
mode: 0755
user: AID_BLUETOOTH
group: AID_BLUETOOTH
caps: NET_ADMIN BLOCK_SUSPEND

[vendor/bin/wcnss_filter]
mode: 0755
user: AID_BLUETOOTH
group: AID_BLUETOOTH
caps: BLOCK_SUSPEND