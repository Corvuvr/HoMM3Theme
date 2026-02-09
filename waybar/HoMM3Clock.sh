#!/bin/bash

HOMM3_CLOCK=1

if [[ "$HOMM3_CLOCK" -eq 1 ]]; then
    date "+%H:%M %d/%m/%g"
else
    monthday=$(date +%e)
    weekday=$(date +%u)
    month=$(date +%m)
    echo "Месяц: $((month)), Неделя: $(( 1 + monthday / 7)), День: ${weekday}"
fi
