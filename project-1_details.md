# <p align='center'> PROJECT 1: USING MICROSOFT EXCEL <br> TO CLEAN DATA, MODEL DATA AND ANALYZE DATA TO DETERMINE TOP FIVE CONTENT CATEGORY REQUIRED BY THE CLIENT

### The Data Model:

On examining the data model below I realized that only three of the datasets would be required to answer the client's question.

These are:
<ol>
  <li>The Content Table</li>
  <li>The Reaction Table</li>
  <li>The ReactionTypes Table</li>
</ol>

![alt text](https://github.com/omabogun/Data-Analysis_Project-1/blob/main/images/data_model.png "Data Model")

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




