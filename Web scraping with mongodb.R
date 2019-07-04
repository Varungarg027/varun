#Loading the rvest package
library('rvest')

#Specifying the url for desired website to be scraped
url <- 'https://www.imdb.com/search/title/?count=250&release_date=2018,2019&title_type=feature'

#Reading the HTML code from the website
webpage <- read_html(url)
webpage

#Using CSS selectors to scrape the title section
title_data_html <- html_nodes(webpage,'.lister-item-header a')

#Converting the title data to text
title_data <- html_text(title_data_html)
#Let's have a look at the title
head(title_data)

length(title_data)
#Using CSS selectors to scrape the IMDB rating section
rating_data_html <- html_nodes(webpage,'.ratings-imdb-rating strong')

#Converting the ratings data to text
rating_data <- html_text(rating_data_html)

#Let's have a look at the ratings
rating_data

#Data-Preprocessing: converting ratings to numerical
rating_data<-as.numeric(rating_data)



#Let's have another look at the ratings data
head(rating_data)
length(rating_data)
x=c(3,12,29,30,36,40,43,44,49,50,58,64,67,75,84,87,98,110,118,120,134,150,151,160,165,177,181,199,206,209,
    210,214,218,225,227,228,232,243)
for (i in x){
  
  a<-rating_data[1:(i-1)]
  
  b<-rating_data[i:length(rating_data)]
  
  rating_data<-append(a,list("NA"))
  
  rating_data<-append(rating_data,b)
  
}


#Data-Preprocessing: converting metascore to numerical
rating_data<-as.numeric(rating_data)

#Let's have another look at length of the metascore data

length(rating_data)
xyz=rating_data
xyz[is.na(xyz)]=0
View(xyz)
rating_data=xyz
#Using CSS selectors to scrape the actors section
actors_data_html <- html_nodes(webpage,'.lister-item-content .ghost+ a')

#Converting the gross actors data to text
actors_data <- html_text(actors_data_html)

#Let's have a look at the actors data
head(actors_data)
actors_data

#Data-Preprocessing: converting actors data into factors
actors_data<-as.factor(actors_data)

#Combining all the lists to form a data frame
                                          movies_df<-data.frame(Title = title_data,rating=rating_data,
                                                                 Actor = actors_data)


#Structure of the data frame
str(movies_df)
View(movies_df)

##for page 2(251 to 500)

url1 <- 'https://www.imdb.com/search/title/?title_type=feature&release_date=2018-01-01,2019-12-31&count=250&start=251&ref_=adv_nxt'

#Reading the HTML code from the website
webpage1 <- read_html(url1)
webpage1

#Using CSS selectors to scrape the title section
title_data_html1 <- html_nodes(webpage1,'.lister-item-header a')

#Converting the title data to text
title_data1 <- html_text(title_data_html1)


#Let's have a look at the title
head(title_data1)

length(title_data1)
#Using CSS selectors to scrape the IMDB rating section
rating_data_html1 <- html_nodes(webpage1,'.ratings-imdb-rating strong')

#Converting the ratings data to text
rating_data1 <- html_text(rating_data_html1)

#Let's have a look at the ratings
rating_data1



#Data-Preprocessing: converting ratings to numerical
rating_data1<-as.numeric(rating_data1)



#Let's have another look at the ratings data
head(rating_data1)
length(rating_data1)
x=c(2,4,11,15,25,26,31,48,55,66,68,82,85,89,90,95,98,100,111,124,130,131,150,162,165,177,179,189,191,211,214,238,242)
for (i in x){
  
  a<-rating_data1[1:(i-1)]
  
  b<-rating_data1[i:length(rating_data1)]
  
  rating_data1<-append(a,list("NA"))
  
  rating_data1<-append(rating_data1,b)
  
}

#Data-Preprocessing: converting metascore to numerical
rating_data1<-as.numeric(rating_data1)

#Let's have another look at length of the metascore data

length(rating_data1)
xyz=rating_data1
xyz[is.na(xyz)]=0
View(xyz)
rating_data1=xyz
#Using CSS selectors to scrape the actors section
actors_data_html1 <- html_nodes(webpage1,'.lister-item-content .ghost+ a')

#Converting the gross actors data to text
actors_data1 <- html_text(actors_data_html1)

#Let's have a look at the actors data
head(actors_data1)
actors_data1

#Data-Preprocessing: converting actors data into factors
actors_data1<-as.factor(actors_data1)


movies_df1=data.frame(Title = title_data1,rating=rating_data1,
                                Actor = actors_data1)
t12=rbind(movies_df,movies_df1)
View(t12)

#Structure of the data frame
str(movies_df)
str(movies_df1)

###500 to 750
url <- 'https://www.imdb.com/search/title/?title_type=feature&release_date=2018-01-01,2019-12-31&count=250&start=501&ref_=adv_nxt'

#Reading the HTML code from the website
webpage <- read_html(url)
webpage

#Using CSS selectors to scrape the title section
title_data_html <- html_nodes(webpage,'.lister-item-header a')

#Converting the title data to text
title_data <- html_text(title_data_html)
#Let's have a look at the title
head(title_data)

length(title_data)
#Using CSS selectors to scrape the IMDB rating section
rating_data_html <- html_nodes(webpage,'.ratings-imdb-rating strong')

#Converting the ratings data to text
rating_data <- html_text(rating_data_html)

#Let's have a look at the ratings
rating_data

#Data-Preprocessing: converting ratings to numerical
rating_data<-as.numeric(rating_data)



#Let's have another look at the ratings data
head(rating_data)
length(rating_data)
x=c(1,6,17,22,24,47,60,85,114,126,19,173,176,195,202,212,222,226,227)
for (i in x){
  
  a<-rating_data[1:(i-1)]
  
  b<-rating_data[i:length(rating_data)]
  
  rating_data<-append(a,list("NA"))
  
  rating_data<-append(rating_data,b)
  
}

#Data-Preprocessing: converting metascore to numerical
rating_data<-as.numeric(rating_data)

#Let's have another look at length of the metascore data

length(rating_data)
xyz=rating_data
xyz[is.na(xyz)]=0
View(xyz)
rating_data=xyz
#Using CSS selectors to scrape the actors section
actors_data_html <- html_nodes(webpage,'.lister-item-content .ghost+ a')

#Converting the gross actors data to text
actors_data <- html_text(actors_data_html)

#Let's have a look at the actors data
head(actors_data)
actors_data

#Data-Preprocessing: converting actors data into factors
actors_data<-as.factor(actors_data)

movies_df2=data.frame(Title = title_data,rating=rating_data,
                      Actor = actors_data)
t123=rbind(t12,movies_df2)
View(t123)

##########3750 to 1000

url <- 'https://www.imdb.com/search/title/?title_type=feature&release_date=2018-01-01,2019-12-31&count=250&start=751&ref_=adv_nxt'

#Reading the HTML code from the website
webpage <- read_html(url)
webpage

#Using CSS selectors to scrape the title section
title_data_html <- html_nodes(webpage,'.lister-item-header a')

#Converting the title data to text
title_data <- html_text(title_data_html)
#Let's have a look at the title
head(title_data)

length(title_data)
#Using CSS selectors to scrape the IMDB rating section
rating_data_html <- html_nodes(webpage,'.ratings-imdb-rating strong')

#Converting the ratings data to text
rating_data <- html_text(rating_data_html)

#Let's have a look at the ratings
rating_data

#Data-Preprocessing: converting ratings to numerical
rating_data<-as.numeric(rating_data)



#Let's have another look at the ratings data
head(rating_data)

length(rating_data)
x=c(2,10,13,23,27,34,35,70,75,76,102,120,148,177,197,222,229,233,245)
for (i in x){
  
  a<-rating_data[1:(i-1)]
  
  b<-rating_data[i:length(rating_data)]
  
  rating_data<-append(a,list("NA"))
  
  rating_data<-append(rating_data,b)
  
}
#Data-Preprocessing: converting metascore to numerical
rating_data<-as.numeric(rating_data)

#Let's have another look at length of the metascore data

length(rating_data)
xyz=rating_data
xyz[is.na(xyz)]=0
View(xyz)
rating_data=xyz
#Using CSS selectors to scrape the actors section
actors_data_html <- html_nodes(webpage,'.lister-item-content .ghost+ a')

#Converting the gross actors data to text
actors_data <- html_text(actors_data_html)

#Let's have a look at the actors data
head(actors_data)
actors_data

#Data-Preprocessing: converting actors data into factors
actors_data<-as.factor(actors_data)

movies_df3=data.frame(Title = title_data,rating=rating_data,
                      Actor = actors_data)
t1234=rbind(t123,movies_df3)

#########################Scraped 1000 Movies dataset#####################
View(t1234)



################MONGODB NOSQL DATABASE IN R#############################

names(t1234) = gsub(" ","",names(t1234)) 
names(t1234)
library(mongolite)
c=mongo(collection = "t1234",db="scrap_movies")
c$insert(t1234)
c$count()
c$iterate()$one()
