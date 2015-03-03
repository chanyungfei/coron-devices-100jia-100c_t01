#!/system/bin/sh
  echo 1 > /sys/module/sec/parameters/recovery_done		#tony
if ! applypatch -c EMMC:recovery:6612992:998a6c51a166b12b5b3df8c537db6017efbddf8b; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:boot:5287936:934a2d7b68dd06e46e4e2b9315f38bfa02385bff EMMC:recovery 998a6c51a166b12b5b3df8c537db6017efbddf8b 6612992 934a2d7b68dd06e46e4e2b9315f38bfa02385bff:/system/recovery-from-boot.p
  if applypatch -c EMMC:recovery:6612992:998a6c51a166b12b5b3df8c537db6017efbddf8b; then		#tony
	echo 0 > /sys/module/sec/parameters/recovery_done		#tony
        log -t recovery "Install new recovery image completed"
  else
	echo 2 > /sys/module/sec/parameters/recovery_done		#tony
        log -t recovery "Install new recovery image not completed"
  fi
else
  echo 0 > /sys/module/sec/parameters/recovery_done              #tony
  log -t recovery "Recovery image already installed"
fi
