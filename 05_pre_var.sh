#!/bin/bash
echo "current pid=$$"
/root/shcode/01_hello.sh &
echo "id of the last process running in the background=$!"
echo "result=$?"
