# Chocolate Lovers
Boot Camp Challenge

### Data Source
We'll be using the chocolate.csv data file.
https://www.kaggle.com/datasets/soroushghaderi/chocolate-bar-2020?select=chocolate.csv
* 10 columns with features, with 3 that will be broken into bins
* Ratings is our Output for our classification.

### Database schema

Entity Relationship diagram for chocolate_lovers database. 

![main](resources/chocolate_lovers.png)

Database : chocolate_db
Tables : chocolate,region,tastes



### Questions:
* How does the percent of Cocoa & the origin of the Bean impact the rating?
* Where do the highest rank beans come from?
* What is impact of ingredients on ratings?

### Visualizations
* We'll visualize the locations of the best rated chocolate bars.
* Heatmap of the countries with highest rated chocolate or best beans.
* Pie chart to show top rated chocolates by ingredient and / or country.
* Avg rating by country or region.
* Tastes related to ratings & visualization of common words

### Models:
Random Forrests model, resulted in 100% accuracy; however, did not separate the data set into training and testing sets. Also, rounded the ratings and encoded the columns with countries. 
Encoded DF
![image](https://user-images.githubusercontent.com/96098938/168457617-f5788bbd-b3d8-43a0-a168-a56abd86c9c6.png)
![image](https://user-images.githubusercontent.com/96098938/168457641-70682550-7c8b-471c-987e-42f384db6a73.png)


### Team Communication Strategy:
Slack & Zoom
