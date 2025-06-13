#!/bin/bash

# Kill existing picom instances
pkill picom

# Start picom with the experimental backends
picom --backend glx &
