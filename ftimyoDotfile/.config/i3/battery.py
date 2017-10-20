#!/usr/bin/env python3
#
# Copyright (C) 2016 James Murphy
# Licensed under the GPL version 2 only
#
# A battery indicator blocklet script for i3blocks

from subprocess import check_output

# stands for charging
FA_LIGHTNING = "<span color='yellow'><span font='FontAwesome'>\uf0e7</span></span>"
# stands for plugged in
FA_PLUG = "<span font='FontAwesome'>\uf1e6</span>"
# stands for unknown
FA_UNKNOWN = "<span font='FontAwesome'>\uf128</span> "


def color(percent):
    if percent < 10:
        # exit code 33 will turn background red
        return '#FFFFFF'
    if percent < 20:
        return '#FF3300'
    if percent < 30:
        return '#FF6600'
    if percent < 40:
        return '#FF9900'
    if percent < 50:
        return '#FFCC00'
    if percent < 60:
        return '#FFFF00'
    if percent < 70:
        return '#FFFF33'
    if percent < 80:
        return '#FFFF66'
    return '#FFFFFF'


def bat_label(percent):
    label = "<span font='FontAwesome'>{}</span>"
    bat = ''
    if percent < 10:
        bat = ''
    elif percent < 35:
        bat = ''
    elif percent < 50:
        bat = ''
    elif percent < 75:
        bat = ''
    return label.format(bat)


def get_batteries():
    status = check_output(['acpi', '-b'], universal_newlines=True)
    batteries = {}
    avg_percent = 0
    if not status:
        # stands for no battery found
        fulltext = "<span color='red'><span font='FontAwesome'>\uf00d \uf240</span></span>"
        percentleft = 100
    else:
        lines = status.split('\n')
        for line in lines:
            if not line:
                continue
            battery_name = line.split(': ')[0]
            battery_info = line.split(': ')[1].split(', ')
            battery_info[1] = int(battery_info[1].rstrip('%\n'))
            batteries[battery_name] = battery_info
            avg_percent += battery_info[1]

    return batteries, avg_percent / len(batteries)


def charging_st(battery_info):
    battery_info[0] = FA_LIGHTNING
    # battery_info[2] = battery_info[2].split()[0]


def discharging_st(battery_info):
    battery_info[0] = bat_label(battery_info[1])
    # battery_info[2] = battery_info[2].split()[0]


def full_st(battery_info):
    battery_info[0] = FA_LIGHTNING


def unknown_st(battery_info):
    battery_info[0] = bat_label(battery_info[1])


def compose_text(battery, battery_info):
    state = battery_info[0]
    percent_left = battery_info[1]
    if state == 'Discharging':
        discharging_st(battery_info)
    elif state == 'Full':
        full_st(battery_info)
    elif state == 'Unknown':
        unknown_st(battery_info)
    else:
        charging_st(battery_info)

    form =  "<span color='{}'>{}%</span>"
    percent_text = form.format(color(percent_left), percent_left)
    battery_info[1] = percent_text
    text = ' '.join(battery_info)
    return text


def main():
    batteries, percent = get_batteries()
    status_text = []
    for bat, info in batteries.items():
        text = compose_text(bat, info)
        status_text.append(text)

    status_text = ' + '.join(status_text)
    print(status_text)
    if percent < 10:
        exit(33)


if __name__ == '__main__':
    main()
