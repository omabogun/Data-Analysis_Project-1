<p align='right'>
<a href='https://github.com/omabogun'> [ HOME ]</a>
<a href='https://github.com/omabogun/Data-Analysis_Projects/blob/main/socialbuzz.md'> [ BACK ]</a>
</p>

# <p align='center'> PROJECT 1: USING MICROSOFT EXCEL <br> TO CLEAN DATA, MODEL DATA AND ANALYZE DATA TO DETERMINE TOP FIVE CONTENT CATEGORY REQUIRED BY THE CLIENT

## INTRODUCTION

In this project a popular social media organization who were considering doing an IPO wanted an analysis of their top five content categories.  They provided a number of raw datasets for to be refined and derive meaningful insights from.  I had to understand the requirements of the client and identified which datasets will be required to answer the client's business question.

Then, I had to clean the datasets and merge them to prepare the data for analysis.  

Finally, I used the cleaned data to answer the client's question by deriving the top five content categories.  I used Microsoft Excel as the primary tool for cleaning, modelling and analyzing the data.


### Cleaning the Datasets

To clean the datasets I started by removing columns which were not needed to answer the business question from each of the tables.  In the content table I removed the USER ID and URL columns.

![alt text](https://github.com/omabogun/Data-Analysis_Project-1/blob/main/images/project1_msexcel1.png "The Content Table")

The <b>Content table</b> contained some records with quotation marks (") in the Category column. I had to clean this by removing the quotation marks using the Find and Replace feature in MS Excel.  The content table had no blank records.

![alt text](https://github.com/omabogun/Data-Analysis_Project-1/blob/main/images/project1_msexcel2.png "The Content Table")

![alt text](https://github.com/omabogun/Data-Analysis_Project-1/blob/main/images/project1_msexcel3.png "The Content Table")

I followed the same process for the <b>Reactions table</b> removing columns that were not needed.  The Reaction table contained some blank / null records in the Reaction Type column.  I removed this using a filter and removing the blanks.  

![alt text](https://github.com/omabogun/Data-Analysis_Project-1/blob/main/images/project1_msexcel5.png "The Content Table")

![alt text](https://github.com/omabogun/Data-Analysis_Project-1/blob/main/images/project1_msexcel6.png "The Content Table")


### Below is the final output after cleaning all the three datasets:

![alt text](https://github.com/omabogun/Data-Analysis_Project-1/blob/main/images/project1_msexcel7b.png "The Content Table")

### Using 'VLOOKUP' to merge tables:

Using the Reactions table as the base table I used the VLOOKUP function to merge the relevant columns from the other tables.

![alt text](https://github.com/omabogun/Data-Analysis_Project-1/blob/main/images/project1_msexcel8.png "The Content Table")

### Using 'IFERROR' Function to capture errors:

I also used the IFERROR Function to capture errors and populated the remaining records.

![alt text](https://github.com/omabogun/Data-Analysis_Project-1/blob/main/images/project1_msexcel9.png "The Content Table")

![alt text](https://github.com/omabogun/Data-Analysis_Project-1/blob/main/images/project1_msexcel10.png "The Content Table")

### Selecting DISTINCT Category Records for Analysis:

I copied the category column to another worksheet and removed duplicate records.

![alt text](https://github.com/omabogun/Data-Analysis_Project-1/blob/main/images/project1_msexcel11.png "The Content Table")

![alt text](https://github.com/omabogun/Data-Analysis_Project-1/blob/main/images/project1_msexcel12.png "The Content Table")

### Using 'SUMIF' Function to calculate the Sum of Scores:

Each Reaction Type has weighted scores, in order to determine the top five content categories, I had to do an aggregate of the scores for the each content category.  I used the SUMIF function to derive a calculated column for the Total Scores for each content category.

![alt text](https://github.com/omabogun/Data-Analysis_Project-1/blob/main/images/project1_msexcel13.png "The Content Table")

### Determining the Top Five Content Categories for the client:

To answer the business question posed by the client, I sorted the Categories in descending order of Total scores.

![alt text](https://github.com/omabogun/Data-Analysis_Project-1/blob/main/images/project1_msexcel14.png "The Content Table")

![alt text](https://github.com/omabogun/Data-Analysis_Project-1/blob/main/images/project1_msexcel15.png "The Content Table")

### Extracting the Final result for the client

I then copied the final result showing the TOP FIVE CONTENT CATEGORIES in a separate worksheet for the client.

## END OF PROJECT-1

![alt text](https://github.com/omabogun/Data-Analysis_Project-1/blob/main/images/project1_msexcel16.png "The Content Table")

