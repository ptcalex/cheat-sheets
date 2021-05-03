### DataFrame operations related to columns


# only keep certain rows
filter!(row -> row.COL1 == "some value", df)
# alternative
df = df[df.COL1 .== "some value", :]

