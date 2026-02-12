#!/usr/bin/env python3

import requests

url = "https://api.open-meteo.com/v1/forecast"
api_get = {"latitude": 50.63712, "longitude": 5.563, "current": "temperature_2m"}
response = requests.get(url=url, params=api_get)

response_dict = response.json()
print(
    response_dict["current"]["temperature_2m"],
    response_dict["current_units"]["temperature_2m"],
    sep="",
)
