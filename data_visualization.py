import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import json
import plotly.express as px

pd.set_option('display.max_columns', None)
pd.set_option('display.max_rows', None)

covid_data = pd.read_csv("final_data_table.csv")

with open('world_map.geo.json', 'r', encoding='utf-8') as file:
    world_map = json.load(file)

fig = px.choropleth(covid_data, geojson=world_map, locations='Entity',
                    featureidkey='properties.admin',color='total_cases')
fig.show()