#!/bin/bash

if [ $server_shared_int_network_floatingIp ]
then
    screen -d -m -S client iperf -c $server_shared_int_network_floatingIp -t 1000
else
    screen -d -m -S client iperf -c $server_private_floatingIp -t 1000
fi

