library(dplyr)
library(tidyverse)
amazon_prime<-read.csv('C:/Users/Aryaman kalia/Desktop/finaltableau/amazon_prime_titles.csv')
head(amazon_prime,10)
netflix_title<-read.csv('C:/Users/Aryaman kalia/Desktop/finaltableau/netflix_titles.csv')
head(netflix_title,10)
#removing description and show_id
amazon_prime<-select(amazon_prime,-c(description))
netflix_title<-select(netflix_title,-c(description))
amazon_prime<-select(amazon_prime,-c(show_id))
netflix_title<-select(netflix_title,-c(show_id))
#----------------------------------
#adding ott name
amazon_prime["OTT"]<-"amazon"
netflix_title["OTT"]<-"netflix"
head(amazon_prime)
head(netflix_title)
colnames(amazon_prime)
colnames(netflix_title)
#checking for duplitcated values
sum(duplicated(amazon_prime))
sum(duplicated(netflix_title))
#_________________________________
#finding unique values of type of shows
unique(amazon_prime[c("type")])
unique(netflix_title[c("type")])
#____________________________________

tv_amazon_prime<- subset(amazon_prime,type=="TV Show")
head(tv_amazon_prime)
movie_amazon_prime<subset(amazon_prime,type=="Movie")
#__________________________________________
tv_netflix_title<-subset(netflix_title,type=="TV Show")
movie_netflix_title<-subset(netflix_title,type=="Movie")

write.csv(amazon_prime,"C:/Users/Aryaman kalia/Desktop/finaltableau/amazon_prime_titles.csv")
write.csv(netflix_title,"C:/Users/Aryaman kalia/Desktop/finaltableau/netflix_titles.csv")

       