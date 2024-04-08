use sb_database

-- Renaming the table to more user friendly names
sp_rename 'dbo.Content$', 'content'
sp_rename 'dbo.Reactions$', 'reactions'
sp_rename 'dbo.ReactionTypes$', 'reaction_types'

-- Removing Columns that are not needed in the Content table
Alter Table content
Drop column "F1", "User ID", "URL"

--Checking the Content table for blank rows
Select * from content   
where "content ID" = '' --checking for blank rows

Select * from content   
where "Type" = '' --checking for blank rows

Select * from content   
where "Category" = '' --checking for blank rows

Select * from content   
where "Content ID" is NULL --checking for NULL values

Select * from content   
where "Type" is NULL --checking for NULL values

Select * from content   
where "Category" is NULL --checking for NULL values

-- Renaming the Column name Type in the Content table to Content Type for uniformity
sp_rename 'Content.Type', 'Content Type'

-- Removing quotation marks from records in the Category column
update content
set "Category" = replace(Category, '"', '')

Select * from content
where "category" Like '"%'



-- Removing Columns that are not needed in the Reactions table 
Alter Table reactions
drop column "F1", "User ID"

Select * from reactions 

-- Renaming the Column name Type in the Reactions table to Reaction Type for uniformity
sp_rename 'Reactions.Type', 'Reaction Type'

sp_rename 'reaction_types.Type', 'Reaction Type'


--Checking the Reactions table for blank rows
Select * from reactions   
where "content ID" = '' --checking for blank rows

Select * from reactions   
where "Reaction Type" = '' --checking for blank rows

Select * from reactions   
where "Datetime" = '' --checking for blank rows

Select * from reactions   
where "Content ID" is NULL --checking for NULL values

Select * from reactions   
where "Reaction Type" is NULL --checking for NULL values

Select * from reactions   
where "Datetime" is NULL --checking for NULL values

-- Removing NULL values from the Reactions table
Delete from reactions
Where "Reaction Type" is NULL

-- The relevant columns from the Content and Reaction_type tables will be merged to the Reactions table and saved in a new table 
-- called reaction_merged

Select reactions."Content ID", reactions."Reaction Type", reactions."Datetime", content."Content Type", content."Category", reaction_types."Sentiment", reaction_types."Score"
Into reactions_merged
From reactions
Left Join content
on reactions."content ID" = content."content ID"
Left Join reaction_types
on reactions."Reaction Type" = reaction_types."reaction type"

-- Finally, sum the categories together as TotalScore and select the top five categories then save into a new table 
-- called top_five_categories
Select DISTINCT TOP(5) Category, SUM(score) as TotalScore
Into top_five_categories
From reactions_merged
Group By Category
Order By TotalScore Desc

Select * from top_five_categories