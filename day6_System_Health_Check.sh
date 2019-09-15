#!/bin/bash
check_disk_usage(){
    echo "=======Disk Usage=========="
    df -h /
    echo

}
check_memory_usage(){
    echo "========== Memory Usage===="
free -h
echo

}
check_uptime(){
    echo "=====System Uptime==="
    uptime
    echo

}
check_disk_usage

check_memory_usage

check_uptime
