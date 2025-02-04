#!/bin/bash

current_time=$(date +"%H:%M")
end_time="18:00"

current_minutes=$(date +"%H")*60+$(date +"%M")
end_minutes=18*60

remaining_minutes=$((end_minutes - current_minutes))
hours_left=$((remaining_minutes / 60))
minutes_left=$((remaining_minutes % 60))

echo "Current time: $current_time"
echo "Work day ends after $hours_left hours and $minutes_left minutes."
