import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import json

pd.set_option('display.max_columns', None)
pd.set_option('display.max_rows', None)

covid_data = pd.read_csv("final_data_table.csv")

# print(covid_data)

with open('world_map.geo.json', 'r', encoding='utf-8') as file:
    world_map = json.load(file)

# for country in world_map['features']:

#     country_name = country['properties']['admin']
#     print(country_name)

