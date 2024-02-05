using CSV
using DataFrames
appleData = CSV.File("data/AAPL Historical Closing Price.csv")

df = DataFrame(appleData)

#proportion of dataset beloning to the testing split
testSplit = round(Int64, (nrow(df)*0.2))

#spitting dataframe into test and train
test = df[1:testSplit, : ]
train = df[testSplit+1:nrow(df), :]

#writing split data back to csv
CSV.write("data/appleTest.csv", test)
CSV.write("data/appleTrain.csv", train)