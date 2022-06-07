# Chocolate Lovers
Boot Camp Challenge

### Data Source:
We'll be using the chocolate.csv data file.
https://www.kaggle.com/datasets/soroushghaderi/chocolate-bar-2020?select=chocolate.csv
* 10 columns with features, with 3 that will be broken into bins
* Ratings is our Output for our classification.

### Database schema:

Entity Relationship diagram for chocolate_lovers database. 

![main](resources/chocolate_lovers.png)

<<<<<<< HEAD
Database : chocolate_db

Tables : chocolate,region,tastes


=======
Creation of 'chocolate' table used for visualizations in Tableau and the export of the table to Postgres SQL database is done in:
https://github.com/ambermiddendorf/chocolate_lovers/blob/main/Coding.ipynb

Creation of 'tastes' table which was joined with chocolate to create the taste_ratings table to create visualizations is done in:
https://github.com/ambermiddendorf/chocolate_lovers/blob/main/word_files/Tastes-Rounded.ipynb

Join statement to create a tastes_ratings table for visualizations:

CREATE TABLE taste_ratings AS
	SELECT chocolate_id, word, rating
	FROM tastes 
	JOIN chocolate ON tastes.chocolate_id = chocolate.index; 
>>>>>>> 4084db525b8b6d8079a609ee6db6e4fd6717ead2

### Questions:
* How does the percent of Cocoa & the origin of the Bean impact the rating?
* Where do the highest rank beans come from?
* What is impact of ingredients on ratings?

### Visualizations:
* Map of the countries with highest rated chocolate or best beans.

![BeanOrigin](https://user-images.githubusercontent.com/95837693/170160404-0cce849e-75bc-429b-852d-e8e98e20b790.PNG)

* Pie chart to show top rated chocolates by ingredient and / or country.

![CompanyLocations](https://user-images.githubusercontent.com/95837693/170160418-b984d22d-5c8b-4658-bfd4-aeb3b2ccfbc8.PNG)

* Avg rating by country or region.

![AvgPerBeanOrigin](https://user-images.githubusercontent.com/95837693/170160438-bffbd400-fb00-4626-af2d-8e1b010cf0eb.PNG)


* Tastes related to ratings & visualization of common words

![Rated4](https://user-images.githubusercontent.com/95837693/170157155-0f01b9d7-116d-45a3-91e3-aa2480da9bd6.png)

### Models:
* Random Forests
* KNN
* Easy Ensemble Data Boost
* KNN with SMOTE and Random Oversampling

Preliminary data preprocessing
* Shape of the data (2224 rows and 21 columns)
* Dtypes
* Dropped the following columns ("ref", "specific_bean_origin_or_bar_name","beans","first_taste","second_taste", "third_taste", "fourth_taste"). Cannot determine what information was conveyed in “ref” column; the columns that addressed taste will be analyzed separately; and “specific_bean_origin_or_bar_name” had many unique entries since this column included possible bar names or bean origin. 
* Checked the dataset for missing values (there were none)
* Checked the dataset for unique value counts in each column.
* Only one chocolate bar reeceived rating 1 and nobody achieved rating higher than 4. The ratings were spread as follows
![image](https://user-images.githubusercontent.com/96098938/170914879-2ff4a75f-cf6b-4aa8-8ad1-695eb8e39385.png)
![image](https://user-images.githubusercontent.com/96098938/170914926-b528be09-f6a9-4049-a920-56163fe16653.png)
* The ratings initially had 13 unique values. Rounded the values to achieve 3 total groups ( rating 2, 3, and 4).
* The majority of chocolate bars were rated above 3
* ![image](https://user-images.githubusercontent.com/96098938/170915236-5778f0da-be41-412f-b666-302fda0ffcc9.png)


 Preliminary feature engineering and preliminary feature selection including their decision-making process
* Remaining columns after dropping are features and “rating” column as outcome
* After splitting the data into training and testing sets, these were the counts for y-values ("rating" column)
![image](https://user-images.githubusercontent.com/96098938/170915354-7246074f-ff11-4d37-b8d2-56dcff775daf.png)

* Encoded data in the columns that contained categorical data
* Several features (“cocoa_percent”, "count_of_ingredients") were scaled to normalize data. 
* Used get_dummies function for the remaining ingredient columns.
Description of how data was split into training and testing sets 
* Data was split as follows 75%-training and 25% testing, additionally it was stratified to ensure we had samples from each rating group in the testing and training group
* After splitting data into training and testing sets, used SMOTE to balance the dataset. 
Explanation of model choice, including limitations and benefit
* The following  models were attempted: Random Forests, KNN, Easy Ensmeble Data Boost, KNN with SMOTE
* The results are shown below
* ![image](https://user-images.githubusercontent.com/96098938/170915607-dfcb58c1-913b-4ae9-b435-52ccbccd9690.png)

* Some models performed better with being able to predict if the chocolate bar will be rated 3 and higher but did not perform well with predicting rating 2. 

* After splitting the data into training and testing sets, the model performed fairly well with prediciting the chocolate bars with raiting 3. 
![image](https://user-images.githubusercontent.com/96098938/169912601-bfee0455-62c6-4f43-8f74-4039e4cf980a.png)

* Feature importances: 0-company_location, 1-company_of_bean_origin, 2-cocoa_percent
* ![image](https://user-images.githubusercontent.com/96098938/169912873-739066b7-da8b-4a50-ab47-658fb0c64846.png)

### Dashboard:

Our dashboard will be created in Tableau to demonstrate the origins of beans of the top rated chocolates and the top tastes used to describe those chocolates. You'll be able to filter the rating of chocolates to see correlating information.

![DashboardConcept](https://user-images.githubusercontent.com/95837693/171538039-2054d1a0-79c9-4d66-92ba-0b1f6e12ddbe.PNG)

[Dashboard](https://public.tableau.com/app/profile/amber.middendorf/viz/Chocolate_Lovers_Maps/ChocolateStory?publish=yes)

### Presentation:
[Google Slides presentation](https://docs.google.com/presentation/d/1te5ZXxZTKd96h4kvXEQcbKajDS40BcD1Jgh-bilh2kU/edit#slide=id.g12a98ee664f_0_1)

### Team Communication Strategy:
Slack & Zoom
