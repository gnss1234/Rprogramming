#----Fake News Detection-Student Project-Education Purpose------

# Get and print current working directory.
print(getwd())

#Reading a CSV File
data <- read.csv("fake.csv")
print(data)

#Analyzing the CSV File
print(is.data.frame(data))
print(ncol(data))
print(nrow(data))


## Importing packages
library(tidyverse) # metapackage with lots of helpful functions
install.packages("tidytext")
library('tidytext') # tidy implimentation of NLP methods
install.packages("syuzhet")
library('syuzhet')

# read in our data
news <- read_csv("fake.csv")

#bs and conspiracy news are also fake
news$type<-gsub("bs","fake",news$type)                 
news$type<-gsub("conspiracy","fake",news$type)          
#while others are real
news$type<-gsub("bias","real",news$type)              
news$type<-gsub("satire","real",news$type)
news$type<-gsub("hate","real",news$type)
news$type<-gsub("junksci","real",news$type)
news$type<-gsub("state","real",news$type)

#Count of type of news that how many are fake and real
library('dplyr')
news %>% group_by(type) %>% summarise(count=n())

#apply function for finding question marks and exclamations and adding into our dataframe
news$exc <- sapply(news$text, function(x) length(unlist(strsplit(as.character(x), "\\!+")))) #count exclamation
news$que <- sapply(news$text, function(x) length(unlist(strsplit(as.character(x), "\\?+")))) #count question marks

##Count of exclamations in fake and real news
news %>% group_by(type) %>% summarise(exclamations=sum(exc))

#Count of question marks in fake and real news
news %>% group_by(type) %>% summarise(QuestionMarks=sum(que))

#boxplot for exclamations in fake and real news
boxplot(exc ~ type,news,ylim=c(0,20),ylab="",col=c("red","orange"))
#we can observe that fake news have more exclamations than real news

#boxplot for question marks in fake and real news
boxplot(que ~ type,news,ylim=c(0,20),col=c("red","orange")) 
#we can observe that fake news have more question marks than real

#function for finding words in each text
terms<- function(fake, text_column, group_column){
  
  group_column <- enquo(group_column)
  text_column <- enquo(text_column)
  
  # get the count of each word in each review
  words <- news %>%
    unnest_tokens(word, !!text_column) %>%
    count(!!group_column, word) %>%
    ungroup()
  
  # get the number of words per text
  #total_words <- words %>%
  #group_by(!!group_column) %>%
  #summarize(total = sum(n))
  
  # combine the two dataframes we just made
  
  return (words)
}


#store all words per text in different data frame
df<-terms(news,text,type)


#create boxplot for number of words of each type
boxplot(n ~ type,df,log="y",xlab="type",ylab="number of words",col=c("green","pink"))

#create sentiment table for text column
sentiment<-get_nrc_sentiment(news$text)
sentiment
#taking only last two columns negative and positive for the analysis
df1<-sentiment[c(9,10)]

#function for normalization
normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}

#normalize negative and positive column for better analysis means the values will lie between 0 and 1
df1$negative<-normalize(df1$negative)
df1$positive<-normalize(df1$positive)

#Combine this with the news dataset
news<-cbind(news,df1)

#finding standard deviations and median of negative and positive columns for each type of news 
neg_sd<-news %>% group_by(type) %>% summarise(neg_sd=sd(negative))
pos_sd<-news %>% group_by(type) %>% summarise(pos_sd=sd(positive))
neg_med<-news %>% group_by(type) %>% summarise(neg_med=median(negative))
pos_med<-news %>% group_by(type) %>% summarise(pos_med=median(positive))

#create dataframes for negative and positive standard deviations and median
dfr2<-data.frame(neg_sd)
dfr1<-data.frame(pos_sd)
dfr3<-data.frame(neg_med)
dfr4<-data.frame(pos_med)

#merging dataframes and taking transpose of t1 we get t2
t1<-merge(dfr1,dfr2)
t2<-t(t1)
t2

#merging dataframes and taking transpose of t4 we get t3
t3<-merge(dfr4,dfr3)
t4<-t(t3)
t4