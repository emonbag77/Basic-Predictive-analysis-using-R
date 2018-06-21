rm(list=ls())
setwd("H:/Edwisor/Data Science/Module 2 - Predictive analysis using R and Python/1 - Analytics Basics/Assignment/data01s2l1")
getwd()

#(1.a) Load CSV in R by skipping second row
df = read.csv("IMDB_data.csv", header = T)[-2,]

#(1.b) Extract the unique genres and its count and store in data frame with index key
df2 = read.csv("IMDB_data.csv", header = T)
df3 = data.frame(Index_Key=c(1:length(unique(df2$Genre))),Genere=table(df2$Genre))

#(1.c) Convert the required data types
class(df$imdbVotes)
df$imdbVotes = as.integer(df$imdbVotes)
class(df$imdbVotes)

class(df$imdbRating)
df$imdbRating = as.integer(df$imdbRating)
class(df$imdbRating)

#(1.d) Sort the genre by its name
df = df[order(df$Genre),]

#(1.e) Create new variable whose values should be square of difference between imdbrating and imdbvotes 
df["square_of_difference"]= (df["imdbRating"] - df["imdbVotes"])^2