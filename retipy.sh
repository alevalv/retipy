#!/bin/sh
set -e
if ! [ -x "$(command -v tmux)" ]; then
	echo 'Error: tmux is not installed.' >&2
	exit 1
fi
if ! [ -x "$(command -v yarn)" ]; then
	echo 'Error: yarn is not installed.' >&2
	exit 1
fi
tmux new -d -s retipy 'cd python && ./src/bin/start_server.sh' \; \
	new-window -d 'cd rest && ./gradlew bootRun' \; next-window \; \
	new-window -d 'cd react && yarn start' \; next-window \; \
	attach \;
