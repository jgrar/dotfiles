#!/bin/sh

mpc_albums_by_artist () {
	mpc -f "%album%" find artist $1 | uniq
}

mpc_gplay () {
	mpc play "$(mpc -f "%position% %file%" playlist | grep "$@" | head -n 1 | cut -f 1)"
}

# vim: set ft=sh:
