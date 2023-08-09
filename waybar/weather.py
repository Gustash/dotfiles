#!/usr/bin/env python3

import requests
import json
from datetime import datetime

API_KEY = '{{API_KEY}}'
FORECAST_ENDPOINT = f'http://api.openweathermap.org/data/2.5/forecast?appid={API_KEY}'
CURRENT_WEATHER_ENDPOINT = f'http://api.openweathermap.org/data/2.5/weather?appid={API_KEY}'

CITY_NAME = 'Aveiro'
COUNTRY_CODE = 'PT'

def get_current_weather():
    params = {'q': f'{CITY_NAME},{COUNTRY_CODE}', 'units': 'metric'}
    response = requests.get(CURRENT_WEATHER_ENDPOINT, params=params)
    data = response.json()
    
    temperature = round(data['main']['temp'])
    icon = data['weather'][0]['icon']
    description = data['weather'][0]['description']
    feels_like = round(data['main']['feels_like'])
    
    return {
        "temperature": temperature,
        "weather_icon": icon,
        "description": description,
        "feels_like": feels_like
    }

def get_forecast_weather():
    params = {'q': f'{CITY_NAME},{COUNTRY_CODE}', 'units': 'metric', 'cnt': 8}
    response = requests.get(FORECAST_ENDPOINT, params=params)
    data = response.json()

    # Find the lowest and highest temperatures for the whole day
    low_temp = float('inf')
    high_temp = float('-inf')
    for item in data['list']:
        temperature = item['main']['temp']
        low_temp = round(min(low_temp, temperature))
        high_temp = round(max(high_temp, temperature))
    return high_temp, low_temp

def get_weather():
    current_weather = get_current_weather()
    high_temp, low_temp = get_forecast_weather()

    timestamp = datetime.now().strftime('%d/%m/%Y %H:%M:%S')

    json_data = {
        "text": current_weather['temperature'],
        "alt": current_weather['weather_icon'],
        "tooltip": f"Low: {low_temp}°C • High: {high_temp}°C\nFeels like: {current_weather['feels_like']}°C\nWeather: {current_weather['description']}\nLocation: {CITY_NAME}, {COUNTRY_CODE}\n\nLast updated: {timestamp}",
    }

    return json.dumps(json_data)

if __name__ == '__main__':
    json_output = get_weather()
    print(json_output)
