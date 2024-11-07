#!/bin/bash

ps aux | grep x11docker | grep -v grep | awk '{print $2}' | xargs kill

