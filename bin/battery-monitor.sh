#!/bin/bash

prev_battery_status=""

while true
do
    battery_level=`acpi -b | grep -P -o '[0-9]+(?=%)'`
    battery_status=`acpi -b | grep -P -o '[a-zA-Z]+(?=,)'`

    if [ $battery_status == "Discharging" ]; then
      if [ $battery_level -le "5" ]; then
        notify-send "Battery is lower 5%!" "Battery level: ${battery_level}%";
      elif [ $battery_level -le "20" ]; then
        notify-send "Battery is lower 20%!" "Battery level: $battery_level%";
      fi
    fi

    if [[ $battery_status != $prev_battery_status ]]; then
      notify-send "Battery status: $battery_status" "Battery level: $battery_level%";
    fi

    prev_battery_status=$battery_status

    sleep 180  # sleep 3 minutes
done
