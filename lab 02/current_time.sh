#!/bin/bash
CURRENT_TIME=$(date +%H:%M)
END_TIME="18:00"

CURRENT_MINUTES=$(date +%s -d "$CURRENT_TIME")
END_MINUTES=$(date +%s -d "$END_TIME")

REMAINING=$(( (END_MINUTES - CURRENT_MINUTES) / 60 ))

HOURS=$(( REMAINING / 60 ))
MINUTES=$(( REMAINING % 60 ))

echo "Current time: $CURRENT_TIME"
echo "Work day ends after $HOURS hours and $MINUTES minutes."
