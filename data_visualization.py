import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import json
import plotly.express as px

pd.set_option('display.max_columns', None)
pd.set_option('display.max_rows', None)

covid_data = pd.read_csv("final_data_table2.csv").fillna(0)
print(covid_data.tail())
# world_regions = pd.read_csv("world_regions_sdg_united_nations_governing_country.csv")

# print(covid_data)

with open('world_map.geo.json', 'r', encoding='utf-8') as file:
    world_map = json.load(file)

# for country in world_map['features']:

#     country_name = country['properties']['sovereignt']
#     country['GoverningCountry'] = country_name
    # world_regions.loc[world_regions['Entity'] == country_name,
                                                                            #    'Sustainable Development Goals (SDG) Regions'].values[0]

fig = px.choropleth(covid_data, geojson=world_map, locations='GoverningCountry',
                    featureidkey='properties.sovereignt',color='total_cases')
fig.show()

# there are things wrong with the overseas territories of Australia, New Zealand, France and the UK. Check out the SQL code and tables.