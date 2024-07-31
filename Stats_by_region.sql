-- Data Cleaning - Drop Unused columns and change column names

ALTER TABLE covid_19_analysis.corona_global_latest_04_29_2020_11_38
DROP COLUMN MyUnknownColumn,
DROP COLUMN NewCases,
DROP COLUMN NewDeaths,
DROP COLUMN `TotÂ Cases/1M pop`,
DROP COLUMN `Deaths/1M pop`,
DROP COLUMN `Tests/ 1M pop`,
DROP COLUMN `Serious,Critical`;

ALTER TABLE covid_19_analysis.corona_global_latest_04_29_2020_11_38
CHANGE COLUMN `Country,Other` Country VARCHAR(255)
;

-- Data Cleaning - Match some region names

UPDATE covid_19_analysis.corona_global_latest_04_29_2020_11_38
SET Country = 'United States of America'
WHERE Country = 'USA';

UPDATE covid_19_analysis.corona_global_latest_04_29_2020_11_38
SET Country = 'Bahamas'
WHERE Country = 'The Bahamas';

UPDATE covid_19_analysis.corona_global_latest_04_29_2020_11_38
SET Country = 'Cape Verde'
WHERE Country = 'Cabo Verde';

UPDATE covid_19_analysis.corona_global_latest_04_29_2020_11_38
SET Country = 'Central African Republic'
WHERE Country = 'CAR';

UPDATE covid_19_analysis.corona_global_latest_04_29_2020_11_38
SET Country = 'Bonaire Sint Eustatius and Saba'
WHERE Country = 'Caribbean Netherlands';

DELETE FROM covid_19_analysis.world_regions_sdg_united_nations
WHERE Entity = 'Guernsey';

UPDATE covid_19_analysis.world_regions_sdg_united_nations
SET Entity = 'Channel Islands'
WHERE Entity = 'Jersey';

UPDATE covid_19_analysis.corona_global_latest_04_29_2020_11_38
SET Country = 'Curacao'
WHERE Country = 'CuraÃ§ao';

UPDATE covid_19_analysis.corona_global_latest_04_29_2020_11_38
SET Country = 'Democratic Republic of Congo'
WHERE Country = 'DRC';

UPDATE covid_19_analysis.corona_global_latest_04_29_2020_11_38
SET Country = 'Faroe Islands'
WHERE Country = 'Faeroe Islands';

UPDATE covid_19_analysis.corona_global_latest_04_29_2020_11_38
SET Country = "Cote D'Ivoire"
WHERE Country = 'Ivory Coast';

UPDATE covid_19_analysis.corona_global_latest_04_29_2020_11_38
SET Country = "Reunion"
WHERE Country = 'RÃ©union';

UPDATE covid_19_analysis.corona_global_latest_04_29_2020_11_38
SET Country = 'South Korea'
WHERE Country = 'S. Korea';

UPDATE covid_19_analysis.corona_global_latest_04_29_2020_11_38
SET Country = 'Saint Martin (French part)'
WHERE Country = 'Saint Martin';

UPDATE covid_19_analysis.corona_global_latest_04_29_2020_11_38
SET Country = 'Sint Maarten (Dutch part)'
WHERE Country = 'Sint Maarten';

UPDATE covid_19_analysis.corona_global_latest_04_29_2020_11_38
SET Country = 'Saint Pierre and Miquelon'
WHERE Country = 'Saint Pierre Miquelon';

UPDATE covid_19_analysis.corona_global_latest_04_29_2020_11_38
SET Country = 'Saint Barthelemy'
WHERE Country = 'St. Barth';

UPDATE covid_19_analysis.corona_global_latest_04_29_2020_11_38
SET Country = 'Saint Vincent and the Grenadines'
WHERE Country = 'St. Vincent Grenadines';

UPDATE covid_19_analysis.corona_global_latest_04_29_2020_11_38
SET Country = 'East Timor'
WHERE Country = 'Timor-Leste';

UPDATE covid_19_analysis.corona_global_latest_04_29_2020_11_38
SET Country = 'Turks and Caicos Islands'
WHERE Country = 'Turks and Caicos';

UPDATE covid_19_analysis.corona_global_latest_04_29_2020_11_38
SET Country = 'United Arab Emirates'
WHERE Country = 'UAE';

UPDATE covid_19_analysis.corona_global_latest_04_29_2020_11_38
SET Country = 'United Kingdom'
WHERE Country = 'UK';

UPDATE covid_19_analysis.corona_global_latest_04_29_2020_11_38
SET Country = 'Vatican'
WHERE Country = 'Vatican City';


-- Add a column to mention the country each region is associated with (for regions that do not have COVID data)

ALTER TABLE covid_19_analysis.world_regions_sdg_united_nations
ADD COLUMN GoverningCountry VARCHAR(255);

INSERT INTO covid_19_analysis.world_regions_sdg_united_nations (Entity, Code, Year, `Sustainable Development Goals (SDG) Regions`, GoverningCountry)
VALUES ('Taiwan',NULL, NULL, 'Taiwan', NULL);

INSERT INTO covid_19_analysis.world_regions_sdg_united_nations (Entity, Code, Year, `Sustainable Development Goals (SDG) Regions`, GoverningCountry)
VALUES ('Antarctica', NULL, NULL, 'Antarctica', NULL);

UPDATE covid_19_analysis.world_regions_sdg_united_nations
SET GoverningCountry = 'Finland'
WHERE Entity = 'Aland Islands';

UPDATE covid_19_analysis.world_regions_sdg_united_nations
SET GoverningCountry = 'United States'
WHERE Entity = 'American Samoa';

UPDATE covid_19_analysis.world_regions_sdg_united_nations
SET GoverningCountry = 'Norway'
WHERE Entity = 'Bouvet Island';

UPDATE covid_19_analysis.world_regions_sdg_united_nations
SET GoverningCountry = 'United Kingdom'
WHERE Entity = 'British Indian Ocean Territory';

UPDATE covid_19_analysis.world_regions_sdg_united_nations
SET GoverningCountry = 'Australia'
WHERE Entity = 'Christmas Island';

UPDATE covid_19_analysis.world_regions_sdg_united_nations
SET GoverningCountry = 'Australia'
WHERE Entity = 'Cocos Islands';

UPDATE covid_19_analysis.world_regions_sdg_united_nations
SET GoverningCountry = 'France'
WHERE Entity = 'French Southern Territories';

UPDATE covid_19_analysis.world_regions_sdg_united_nations
SET GoverningCountry = 'United States'
WHERE Entity = 'Guam';

UPDATE covid_19_analysis.world_regions_sdg_united_nations
SET GoverningCountry = 'Australia'
WHERE Entity = 'Heard Island and McDonald Islands';

UPDATE covid_19_analysis.world_regions_sdg_united_nations
SET GoverningCountry = 'Australia'
WHERE Entity = 'Norfolk Island';

UPDATE covid_19_analysis.world_regions_sdg_united_nations
SET GoverningCountry = 'United States'
WHERE Entity = 'Northern Mariana Islands';

UPDATE covid_19_analysis.world_regions_sdg_united_nations
SET GoverningCountry = 'United Kingdom'
WHERE Entity = 'Pitcairn';

UPDATE covid_19_analysis.world_regions_sdg_united_nations
SET GoverningCountry = 'United States'
WHERE Entity = 'Puerto Rico';

UPDATE covid_19_analysis.world_regions_sdg_united_nations
SET GoverningCountry = 'United Kingdom'
WHERE Entity = 'Saint Helena';

UPDATE covid_19_analysis.world_regions_sdg_united_nations
SET GoverningCountry = 'United Kingdom'
WHERE Entity = 'South Georgia and the South Sandwich Islands';

UPDATE covid_19_analysis.world_regions_sdg_united_nations
SET GoverningCountry = 'Norway'
WHERE Entity = 'Svalbard and Jan Mayen';

UPDATE covid_19_analysis.world_regions_sdg_united_nations
SET GoverningCountry = 'New Zealand'
WHERE Entity = 'Tokelau';

UPDATE covid_19_analysis.world_regions_sdg_united_nations
SET GoverningCountry = 'United States'
WHERE Entity = 'United States Minor Outlying Islands';

UPDATE covid_19_analysis.world_regions_sdg_united_nations
SET GoverningCountry = 'United States'
WHERE Entity = 'United States Virgin Islands';

UPDATE covid_19_analysis.world_regions_sdg_united_nations
SET GoverningCountry = 'France'
WHERE Entity = 'Wallis and Futuna';

-- Replace NULL values with Country names in field 'GoverningCountry'

UPDATE covid_19_analysis.world_regions_sdg_united_nations
SET GoverningCountry = IFNULL(GoverningCountry, Entity);

-- Add Covid Data of Diamond Princess and MS Zaandam to the United Kingdom and Netherlands respectively

UPDATE covid_19_analysis.corona_global_latest_04_29_2020_11_38
SET 
    TotalCases = (SELECT TotalCases FROM (SELECT * FROM covid_19_analysis.corona_global_latest_04_29_2020_11_38) AS cases WHERE Country = 'Diamond Princess') +
    (SELECT TotalCases FROM (SELECT * FROM covid_19_analysis.corona_global_latest_04_29_2020_11_38) AS cases WHERE Country = 'United Kingdom'),
    TotalDeaths = (SELECT TotalDeaths FROM (SELECT * FROM covid_19_analysis.corona_global_latest_04_29_2020_11_38) AS deaths WHERE Country = 'Diamond Princess') +
    (SELECT TotalDeaths FROM (SELECT * FROM covid_19_analysis.corona_global_latest_04_29_2020_11_38) AS deaths WHERE Country = 'United Kingdom'),
    TotalRecovered = (SELECT TotalRecovered FROM (SELECT * FROM covid_19_analysis.corona_global_latest_04_29_2020_11_38) As recovered WHERE Country = 'Diamond Princess') +
    (SELECT TotalRecovered FROM (SELECT * FROM covid_19_analysis.corona_global_latest_04_29_2020_11_38) As recovered WHERE Country = 'United Kingdom'),
    ActiveCases = (SELECT ActiveCases FROM (SELECT * FROM covid_19_analysis.corona_global_latest_04_29_2020_11_38) AS activeCases WHERE Country = 'Diamond Princess') +
    (SELECT ActiveCases FROM (SELECT * FROM covid_19_analysis.corona_global_latest_04_29_2020_11_38) AS activeCases WHERE Country = 'United Kingdom'),
    TotalTests = (SELECT TotalTests FROM (SELECT * FROM covid_19_analysis.corona_global_latest_04_29_2020_11_38) AS tests WHERE Country = 'Diamond Princess') +
    (SELECT TotalTests FROM (SELECT * FROM covid_19_analysis.corona_global_latest_04_29_2020_11_38) AS tests WHERE Country = 'United Kingdom')
WHERE Country = 'United Kingdom';

DELETE FROM covid_19_analysis.corona_global_latest_04_29_2020_11_38
WHERE Country = 'Diamond Princess';

UPDATE covid_19_analysis.corona_global_latest_04_29_2020_11_38
SET 
    TotalCases = (SELECT TotalCases FROM (SELECT * FROM covid_19_analysis.corona_global_latest_04_29_2020_11_38) AS cases WHERE Country = 'MS Zaandam') +
    (SELECT TotalCases FROM (SELECT * FROM covid_19_analysis.corona_global_latest_04_29_2020_11_38) AS cases WHERE Country = 'Netherlands'),
    TotalDeaths = (SELECT TotalDeaths FROM (SELECT * FROM covid_19_analysis.corona_global_latest_04_29_2020_11_38) AS deaths WHERE Country = 'MS Zaandam') +
    (SELECT TotalDeaths FROM (SELECT * FROM covid_19_analysis.corona_global_latest_04_29_2020_11_38) AS deaths WHERE Country = 'Netherlands'),
    TotalRecovered = (SELECT TotalRecovered FROM (SELECT * FROM covid_19_analysis.corona_global_latest_04_29_2020_11_38) As recovered WHERE Country = 'MS Zaandam') +
    (SELECT TotalRecovered FROM (SELECT * FROM covid_19_analysis.corona_global_latest_04_29_2020_11_38) As recovered WHERE Country = 'Netherlands'),
    ActiveCases = (SELECT ActiveCases FROM (SELECT * FROM covid_19_analysis.corona_global_latest_04_29_2020_11_38) AS activeCases WHERE Country = 'MS Zaandam') +
    (SELECT ActiveCases FROM (SELECT * FROM covid_19_analysis.corona_global_latest_04_29_2020_11_38) AS activeCases WHERE Country = 'Netherlands'),
    TotalTests = (SELECT TotalTests FROM (SELECT * FROM covid_19_analysis.corona_global_latest_04_29_2020_11_38) AS tests WHERE Country = 'MS Zaandam') +
    (SELECT TotalTests FROM (SELECT * FROM covid_19_analysis.corona_global_latest_04_29_2020_11_38) AS tests WHERE Country = 'Netherlands')
WHERE Country = 'Netherlands';

DELETE FROM covid_19_analysis.corona_global_latest_04_29_2020_11_38
WHERE Country = 'MS Zaandam';

-- Final aggregation of data region-wise

SELECT `Sustainable Development Goals (SDG) Regions`,
		SUM(TotalCases) AS total_cases,
		SUM(TotalDeaths) AS total_deaths,
        SUM(TotalRecovered) AS total_recovered,
        SUM(ActiveCases) AS active_cases,
        SUM(TotalTests) AS total_tests
FROM (
	SELECT * FROM covid_19_analysis.corona_global_latest_04_29_2020_11_38 AS covid_stats
	RIGHT JOIN covid_19_analysis.world_regions_sdg_united_nations AS world_regions
	ON covid_stats.Country = world_regions.Entity
) AS combined_results
GROUP BY `Sustainable Development Goals (SDG) Regions`;