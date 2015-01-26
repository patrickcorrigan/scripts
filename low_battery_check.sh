SAFE_PERCENT=15
if [[ -n $(acpi -b | grep -i discharging) ]]; then
    rem_bat=$(acpi -b | grep -Eo "[0-9]+%" | grep -Eo "[0-9]+")
        if [[ $rem_bat -lt $SAFE_PERCENT ]]; then
            zenity --info --text="You have $rem_bat percent battery remaining."
        fi
fi
