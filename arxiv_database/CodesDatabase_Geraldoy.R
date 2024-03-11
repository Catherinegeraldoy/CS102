library(DBI)
library(dplyr)
connection<-dbConnect(RMariaDB::MariaDB(),
                      dsn="RMaria-connection",
                      dbname="sample_dbg",
                      Server="localhost",
                      user="root")

#Checking the connect
dbListTables(connection)

dbListFields(connection,"post")

#acquire all the data in database
posts_data_database <- dbGetQuery(connection, "SELECT * FROM sample_dbg.post")

#getting only 150 
posts_data_arxiv<-posts_data_database[c(1:150),]

save(posts_data_arxiv, file = "Arxiv_on_Physics.RData")

write.csv(posts_data_arxiv, file = "Physics Arxiv papers on database.csv")