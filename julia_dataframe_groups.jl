### DataFrame operations related to groups



# splits df into groups by columns value, returns a grouped data frame (GDF)
# each element of the GDF is a DataFrame similar to df
gdf = groupby(df, [:col1, :col2]) 



# apply functions to each group of a GDF
combine(gdf, nrow => :n)

# apply functions to columns of a GDF
combine(gdf, :col1 => minimum => :col1min , :col2 => maximum => :col2max)

