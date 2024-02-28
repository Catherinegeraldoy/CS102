library(DBI)
library(dplyr)
library(RMariaDB)

connection<-dbConnect(RMariaDB::MariaDB(),
                      dsn="RMaria-connection",
                      dbname="sample_dbg",
                      Server="localhost",
                      user="root")
#Checking the connect
dbListTables(connection)
dbListFields(connection,"movies10")

#1
query <- "INSERT into movies10(title, reviewer, date_of_review, rating, title_of_review, review)VALUES('Coco', 'gazzolaaria', '12 April 2019', '9/10', 'What an experience','Its a movie for kids with a sentimental kick. Well done.') "

query_result <- dbSendQuery(connection, query)
movies10_data <- dbGetQuery(connection, "SELECT * FROM sample_dbg.movies10")
glimpse(movies10_data)

#2
query <- "INSERT INTO movies10(title, reviewer, date_of_review, rating, title_of_review, review)VALUES('Grave of the Fireflies', 'ADI-0004', '4 June 2022', '8/10', 'War is Evil', 'Grave of the Fireflies is a powerful animated war drama which highlights the destruction and devastation caused on public property and the economy by showing the lives of two siblings Seita and his younger sister Setsuko. Their tale of
survival is as heartbreaking as it is true to life. The siblings rely completely on each other and struggle against all odds to stay together and stay alive.I loved how the movie didnt focus on fighting and
violence at all but directly went into the impact the war has on everyday life. Thus the politics of war was avoided The movie has a slow but steady pace throughout and all the emotions are very well portrayed through the expressions the background music and of course the voice acting')"

query_result <- dbSendQuery(connection, query)
movies10_data <- dbGetQuery(connection, "SELECT * FROM sample_dbg.movies10")
glimpse(movies10_data)
View(movies10_data)

#3 
query <- "INSERT INTO movies10(title, reviewer, date_of_review, rating, title_of_review, review)VALUES('Parasite', 'Anass-gfx', '18 January 2020', '9/10', 'ACT LIKE YOU OWN THE PLACE.', 'Youll watch knowing youre in the hands of a master filmmaker')"

query_result <- dbSendQuery(connection, query)
movies10_data <- dbGetQuery(connection, "SELECT * FROM sample_dbg.movies10")
glimpse(movies10_data)
View(movies10_data)

#4
query <- "INSERT INTO movies10(title, reviewer, date_of_review, rating, title_of_review, review)VALUES('Spirited Away', 'aguilera1685', '25 November 2019', '10/10', 'Perfection', 'Perfection from top to bottom. Possibly my favorite film ever.')"

query_result <- dbSendQuery(connection, query)
movies10_data <- dbGetQuery(connection, "SELECT * FROM sample_dbg.movies10")
glimpse(movies10_data)
View(movies10_data)

#5
query <- "INSERT INTO movies10(title, reviewer, date_of_review, rating, title_of_review, review)VALUES('Maleficient', 'cezbanbelubo', '25 June 2020', '7/10', 'Elle Fanning and Angelina jolie are amazing', 'Elle Fanning and Angelina jolie are amazing. This movie is wonderful')"

query_result <- dbSendQuery(connection, query)
movies10_data <- dbGetQuery(connection, "SELECT * FROM sample_dbg.movies10")
glimpse(movies10_data)
View(movies10_data)

#6
query <- "INSERT INTO movies10(title, reviewer, date_of_review, rating, title_of_review, review)VALUES('The Meg
', 'didabrera', '23 January 2021', '1/10', 'GID THIS IS AWFUL!', 'Please dont waste your time! Dreary, dreary and dreary!')"

query_result <- dbSendQuery(connection, query)
movies10_data <- dbGetQuery(connection, "SELECT * FROM sample_dbg.movies10")
glimpse(movies10_data)
View(movies10_data)

#7
query <- "INSERT INTO movies10(title, reviewer, date_of_review, rating, title_of_review, review)VALUES('Phantom Thread', 'cristhak', '24 April 2020', '6/10', 'Lewis is amazing but nothing else', 'I had high expectations and although Lewis was amazing, the movie ended and I was left with a HUGE question mark (???!!!!) I felt I lost 2 hours of my life. No sense whatsoever.')"

query_result <- dbSendQuery(connection, query)
movies10_data <- dbGetQuery(connection, "SELECT * FROM sample_dbg.movies10")
glimpse(movies10_data)
View(movies10_data)

#8
query <- "INSERT INTO movies10(title, reviewer, date_of_review, rating, title_of_review, review)VALUES('The Meg
', 'strikefirst68052', '1 June 2020', '4/10', 'Boring', 'If your age is 70 and you have no work to do then this is your cup of tea')"

query_result <- dbSendQuery(connection, query)
movies10_data <- dbGetQuery(connection, "SELECT * FROM sample_dbg.movies10")
glimpse(movies10_data)
View(movies10_data)

#9

query <- "INSERT INTO movies10(title, reviewer, date_of_review, rating, title_of_review, review)VALUES('Schlinders List', 'Moah-505q', '10 February 2022', '10/10', 'fabulous, should save in movies history', 'The List Is Life I am speechless I am speechless.....The greatest one-part movie of my life1000000010soooo deeply touchingall human beings must see this masterpiece.')"

query_result <- dbSendQuery(connection, query)
movies10_data <- dbGetQuery(connection, "SELECT * FROM sample_dbg.movies10")
glimpse(movies10_data)
View(movies10_data)


#10
query <- "INSERT INTO movies10(title, reviewer, date_of_review, rating, title_of_review, review)VALUES('Puss in Boots', 'lojitsu', '5 April 2023', '8/10', 'Like Zorro and Pirated of the Caribbean had a cartoon baby.', 'Heres The 4K Lowedown on Puss in Boots: The Last Wish(PG - 2022 - Blu)Genre: AnimatedFamilyMy Score: 7.9Cast10 Acting7 Plot=8 Ending=8 Story=8 Art8 Voice9 Music5 Family9 Funny7When Puss discovers that he has burned through eight of his nine lives, he launches an epic journey to restore them by finding the mythical Last Wish.I know I can never defeat you, Lobo...but I will never stop fighting for this life.I liked this...it felt like Zorro and Pirates of the Caribbean had a cartoon baby. The artwork was done two different ways...one being your conventional DreamWorks stuff and when the fight scenes started it was all of a sudden Into the Spiderverse. This film from the Shrek franchise is worth a watch for sure.')"

query_result <- dbSendQuery(connection, query)
movies10_data <- dbGetQuery(connection, "SELECT * FROM sample_dbg.movies10")
glimpse(movies10_data)
View(movies10_data)
















