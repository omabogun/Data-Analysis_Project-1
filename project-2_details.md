# <p align='center'>PROJECT 2: USING SQL TO CLEAN DATA, MODEL DATA AND ANALYZE DATA TO GENERATE TOP FIVE CONTENT CATEGORIES FOR A CLIENT


## INTRODUCTION

In this project a popular social media organization who were considering doing an IPO wanted an analysis of their top five content categories. They provided a number of raw datasets for to be refined and derive meaningful insights from. I had to understand the requirements of the client and identified which datasets will be required to answer the client's business question.

Then, I had to clean the datasets and merge them to prepare the data for analysis.

Finally, I used the cleaned data to answer the client's question by deriving the top five content categories. I used SQL as the primary tool for cleaning, modelling and analyzing the data.

[SQL File](https://github.com/omabogun/Data-Analysis_Projects/blob/main/assets/Project_SB.sql) used for the project

### IMPORTING RAW DATASETS INTO SQL SERVER MANAGEMENT STUDIO

I started by importing the raw datasets into SQL Server Management Studio

![alt text](https://github.com/omabogun/Data-Analysis_Project-1/blob/main/images/project2_sql1.png "SQL Image")

![alt text](https://github.com/omabogun/Data-Analysis_Project-1/blob/main/images/project2_sql2.png "SQL Image")

![alt text](https://github.com/omabogun/Data-Analysis_Project-1/blob/main/images/project2_sql3.png "SQL Image")

![alt text](https://github.com/omabogun/Data-Analysis_Project-1/blob/main/images/project2_sql4.png "SQL Image")

![alt text](https://github.com/omabogun/Data-Analysis_Project-1/blob/main/images/project2_sql5.png "SQL Image")

![alt text](https://github.com/omabogun/Data-Analysis_Project-1/blob/main/images/project2_sql6.png "SQL Image")

![alt text](https://github.com/omabogun/Data-Analysis_Project-1/blob/main/images/project2_sql7.png "SQL Image")

![alt text](https://github.com/omabogun/Data-Analysis_Project-1/blob/main/images/project2_sql8.png "SQL Image")


### RENAMING THE IMPORTED TABLES AND DROPPING IRRELEVANT COLUMNS

I renamed the imported tables to more user friendly names using the syntax below: 

<i>sp_rename 'dbo.Content$', 'content'<br>
sp_rename 'dbo.Reactions$', 'reactions'<br>
sp_rename 'dbo.ReactionTypes$', 'reaction_types'</i>

After that, I commenced cleaning the Content table by removing columns that were not needed to answer the client's request.

I used the syntax below to drop irrelevant columns from the content table:

<i>Alter Table content<br>
Drop column "F1", "User ID", "URL"</i>

![alt text](https://github.com/omabogun/Data-Analysis_Project-1/blob/main/images/project2_sql9.png "SQL Image")



### CLEANING THE CONTENT TABLE: REMOVING QUOTATION MARKS FROM SOME RECORDS

Some records in the Category column of the content table had quotation marks.  I removed the quotation marks using the syntax below:

<i>update content<br>
set "Category" = replace(Category, '"', '')</i>

![alt text](https://github.com/omabogun/Data-Analysis_Project-1/blob/main/images/project2_sql12.png "SQL Image")

![alt text](https://github.com/omabogun/Data-Analysis_Project-1/blob/main/images/project2_sql13.png "SQL Image")

I also checked for blank / null records in the content table, but there was none.

![alt text](https://github.com/omabogun/Data-Analysis_Project-1/blob/main/images/project2_sql12a.png "SQL Image")

### CLEANING THE REACTIONS TABLE

I also cleaned the reactions table by removing the columns that were not needed, checking for blank / null records and removing the blank / null records. There were some null records in the Reaction Type  column that were removed. 

![alt text](https://github.com/omabogun/Data-Analysis_Project-1/blob/main/images/project2_sql10.png "SQL Image")

![alt text](https://github.com/omabogun/Data-Analysis_Project-1/blob/main/images/project2_sql11.png "SQL Image")

![alt text](https://github.com/omabogun/Data-Analysis_Project-1/blob/main/images/project2_sql14.png "SQL Image")

![alt text](https://github.com/omabogun/Data-Analysis_Project-1/blob/main/images/project2_sql15.png "SQL Image")



