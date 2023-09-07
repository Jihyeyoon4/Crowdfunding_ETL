# Crowdfunding_ETL

## Team member 

- Nikita Gahoi
- Jihye Yoon

## Project Proposal

Our team engaged in hands-on experience by constructing an ETL (Extract, Transform, Load) pipeline utilizing Python and Pandas. We used Python dictionaries and Regex methods to efficiently extract and reshape the data. Following the data transformation, we generated four CSV files, which served as the foundation for constructing both an Entity-Relationship Diagram (ERD) and a table schema. Finally, we imported the CSV data into a Postgres database. 

Majorly this project was divided into the following sub-sections:

- Create the Category and Subcategory DataFrames - Nikita

Extracted and transformed the Excel data (crowdfunding.xlsx) to create Category and Subcategory DataFrames:
     - Extracted all the unique values for Categories and Subcategories
    - Created numpy arrays from 1-9 for the categories and 1-24 for the subcategories
    - Used a list comprehension to add "cat" to each category_id and "subcat" to each subcategory_id

- Create the Campaign DataFrame - Nikita
  
 Extracted and transformed the Excel data (crowdfunding.xlsx) to create a campaign DataFrame:
    - Renamed a few columns: "blurb" : "description", "launched_at" : "launched_date", and "deadline" : "end_date".
    - Changed the data type of few columns:
         - Converted the "goal" and "pledged columns" to a `float` data type
        - Formated the "launched_date" and "end_date" columns to datetime format
    - Merged the dataframes on "category" and "sub-categories"
    - Deleted a few unwanted columns
    - Clean DataFrame was then and exported as campaign.csv and saved to GitHub repository.

- Create the Contacts DataFrame - Jihye
    - Imported the contacts.xlsx file into a DataFrame and converted each row to a dictionary
    - Used  Python list comprehension to extract the dictionary values from the keys by 
    - Added the values for each row to a new list
    - Created a new dataframe with the extracted value
    - Split each "name" column value into a first and last name, and place each in a new column
    - Clean DataFrame was then and exported as contacts.csv and saved to GitHub repository.

- Create the Crowdfunding Database: ERD diagram- Jihye; table Schema - Jihye and Nikita
    - Inspect the four CSV files, and then sketch an ERD of the tables by using QuickDBD - Jihye

        ![ERD-Crowdfunding_ETL](https://github.com/NikitaGahoi/Web_Scrapping_Challenge/assets/136101293/f58edea2-9366-48bc-af72-94d7ae076dcc)
    - Use the information from the ERD to create a table schema for each CSV file - Jihye and Nikita
    - Save the database schema as a Postgres file named crowdfunding_db_schema.sql, and save it to your GitHub repository.
    - Import each CSV file into its corresponding SQL table.
    - Verified that each table has the correct data by running a SELECT statement for each 


## Our team used 
Jupyter Notebooks, Pandas, Numpy, PostGresSQL, QuickDBD

## References

https://bootcampspot.instructure.com/courses/4549/assignments/56924?module_item_id=1002774
