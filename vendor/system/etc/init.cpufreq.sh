#!/system/bin/sh

con=$1
type=$2

if [ "$type" = "GPU" ];then
    echo 101 > /sys/module/mali/parameters/loading_threshold
    echo 6B 40 > /sys/devices/platform/mt6333-user/mt6333_access
    echo 6C 40 > /sys/devices/platform/mt6333-user/mt6333_access
    echo "0 4" > /proc/freqhopping/status
    if [ $con -ge 1 ];then
        #300mhz
        echo 4 0x800b89d8 > /proc/clkmgr/pll_fsel
    else
        #412mhz
        echo 4 0x800fd89d > /proc/clkmgr/pll_fsel
    fi
else
    if [ $con -ge 1 ];then
        echo 1664000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
    else
        echo 2002000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
    fi
fi


