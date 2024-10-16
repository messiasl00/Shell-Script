#! /bin/bash

ps -e -o pid,%mem,cmd --sort=-%mem | head -n 16
