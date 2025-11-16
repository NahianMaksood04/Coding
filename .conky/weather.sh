#!/bin/bash
# Detect city automatically
CITY=$(curl -s ipinfo.io/city)

# Your OpenWeatherMap API key
API_KEY="0faf8cd7b1f84a6ea11ab0f37f964c07"

# Fetch forecast (next 3 hours)
DATA=$(curl -s "https://api.openweathermap.org/data/2.5/forecast?q=${CITY}&appid=${API_KEY}&units=metric")

# Extract temperature
TEMP=$(echo "$DATA" | jq ".list[0].main.temp" | xargs printf "%.0f")

# Extract rain probability (pop = 0–1, convert to %)
RAIN=$(echo "$DATA" | jq ".list[0].pop * 100" | xargs printf "%.0f")

# Final output
echo "${CITY}
${TEMP}° ${RAIN}%" 
