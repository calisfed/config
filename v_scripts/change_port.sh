# TODO 
# Make it universal

# Fish version
# if test (pactl list sinks | grep Active | awk '{print $4}') = 'Speaker'; pactl set-sink-port 56 '[Out] Headphones'; else; pactl set-sink-port 56 '[Out] Speaker'; end;
#
# default_sink = pactl get-default-sink
# all_ports = pactl list sinks | grep -e "type"
# active_port = pactl list sinks | grep Active
#
#
#!/bin/bash
sink_info=$(pactl list sinks)
# sink_no=$(echo "$sink" | sed -n 1p | awk '{print $2}'
active_port=$(echo "$sink_info" | grep Active | awk '{print $4}')
#echo $sink
echo $active_port
if [[ $active_port == "Speaker" ]]
then
  pactl set-sink-port $(pactl get-default-sink) '[Out] Headphones'
else
  pactl set-sink-port $(pactl get-default-sink) '[Out] Speaker'
fi
