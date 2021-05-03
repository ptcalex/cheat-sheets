### DataFrame operations related to columns



# add a new column and initialize it
df.col1 = zeros(nrow(df))
df.col2 = zeros(Int, nrow(df))


# remove columns
select!(df, Not([:COL1, :COL2]))


# rename columns
rename!(df , :COL1 => :col1, :COL2 => :col2)

