import pandas as pd 
df = pd.read_csv(
    "--file_path--/Residential Property Market Analysis/Bigdata_Property_transactions.csv",
    low_memory=False)


# Cleaning price column 
df["PRICE"] = pd.to_numeric(df["PRICE"] ,errors= "coerce")
df = df[df["PRICE"]>0]

# Cleaning the sale date column 
df["SALEDATE"] = pd.to_datetime(df["SALEDATE"] , errors= "coerce")
df = df.dropna(subset=["SALEDATE"])

# Cleaning record_date column 
df["RECORDDATE"] = pd.to_datetime(df["RECORDDATE"] , errors= "coerce" )

# Adding year column 
df["YEAR"] = df["SALEDATE"].dt.year
# Adding month column 
df["MONTH"] = df["SALEDATE"].dt.month

# Price categories column
def price_categories(price):
    if price < 100000 : 
        return "Low"
    elif price < 300000 : 
        return "Medium"
    else: 
        return "High"
    
df["PRICE_CATEGORY"] = df["PRICE"].apply(price_categories)

# formatting and cleaning text columns 
Columns= list(df.columns)
for column in Columns : 
    if df[column].dtypes == 'object' :
        df[column] = df[column].str.title()
    else :
        df[column] = df[column]

# dropping duplicates 
df = df.drop_duplicates()
# dropping columns not needed for analysis 
df = df.drop(columns=["PROPERTYFRACTION", "PROPERTYADDRESSDIR", "PROPERTYADDRESSUNITDESC", "PROPERTYUNITNO", "DEEDPAGE", "INSTRTYP"], errors='ignore')   

# Exporting cleaned data 
df.to_csv("cleaned_property_data.csv", index=False , quoting= 1)