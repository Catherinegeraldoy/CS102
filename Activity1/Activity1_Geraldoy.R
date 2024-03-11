install.packages("rvest")

library(rvest)
library(polite)


# Read the HTML file
tablet_url <- "https://www.amazon.com/s?i=specialty-aps&bbn=16225007011&rh=n%3A16225007011%2Cn%3A2348628011&ref=nav_em__nav_desktop_sa_intl_tablet_accessories_0_2_6_14"

session <- bow(tablet_url,
               user_agent = "Educational")
session

session_page <- scrape(session)

div_elements <- html_nodes(session_page,'div.sg-col-4-of-24.sg-col-4-of-12.s-result-item.s-asin.sg-col-4-of-16.sg-col.s-widget-spacing-small.sg-col-4-of-20')

tablet_brandDescriptions<- character()
tablet_prices<-character()
tablet_reviews<-character()
tablet_ratings<-character()

for (div_element in div_elements) {
  
  # Find the span element with class="a-size-base-plus a-color-base a-text-normal" and get the title
  brand_element<- html_node(div_element, 'span.a-size-base-plus.a-color-base.a-text-normal')
brandDescription <- ifelse(!is.na(brand_element), html_text(brand_element), '')

  # Find the span element with class="a-price-whole" and get the price
  price_element <- html_node(div_element, 'span.a-price-whole')
  price <- ifelse(!is.na(price_element), html_text(price_element), '')
  
  # Find the span element with class="a-icon-alt" and get the ratings
  rating_element <- html_node(div_element, 'span.a-icon-alt')
  rating <- ifelse(!is.na(rating_element), html_text(rating_element), '')
  
  review_element <- html_node(div_element, 'div.s-csa-instrumentation-wrapper.alf-search-csa-instrumentation-wrapper')
  review <- ifelse(!is.na(review_element), html_text(review_element), '')
  
  # Append data to vectors
  tablet_brandDescriptions <- c(tablet_brandDescriptions,brandDescription)
  tablet_prices <- c(tablet_prices,price)
  tablet_ratings <- c(tablet_ratings,rating)
  tablet_reviews<-c(tablet_reviews,review)
}


# Create a data frame
product_tablet <- data.frame(
                        Category=c('Tablet'), 
                        Brands = tablet_brandDescriptions, 
                         Price = tablet_prices, 
                         Rating = tablet_ratings,
                        Review=tablet_reviews)


#####
url_storage <- "https://www.amazon.com/s?i=specialty-aps&bbn=16225007011&rh=n%3A16225007011%2Cn%3A1292110011&ref=nav_em__nav_desktop_sa_intl_data_storage_0_2_6_5"

session1 <- bow(url_storage,
               user_agent = "Educational")
session1

session_page1 <- scrape(session1)

div_elements <- html_nodes(session_page1,'div.sg-col-4-of-24.sg-col-4-of-12.s-result-item.s-asin.sg-col-4-of-16.sg-col.s-widget-spacing-small.sg-col-4-of-20')

storage_brandDescriptions<- character()
storage_prices<-character()
storage_reviews<-character()
storage_ratings<-character()

for (div_element in div_elements) {
  
  # Find the span element with class="a-size-base-plus a-color-base a-text-normal" and get the title
  brand_element<- html_node(div_element, 'span.a-size-base-plus.a-color-base.a-text-normal')
  brandDescription <- ifelse(!is.na(brand_element), html_text(brand_element), '')
  
  # Find the span element with class="a-price-whole" and get the price
  price_element <- html_node(div_element, 'span.a-price-whole')
  price <- ifelse(!is.na(price_element), html_text(price_element), '')
  
  # Find the span element with class="a-icon-alt" and get the ratings
  rating_element <- html_node(div_element, 'span.a-icon-alt')
  rating <- ifelse(!is.na(rating_element), html_text(rating_element), '')
  
  review_element <- html_node(div_element, 'div.s-csa-instrumentation-wrapper.alf-search-csa-instrumentation-wrapper')
  review <- ifelse(!is.na(review_element), html_text(review_element), '')
  
  # Append data to vectors
  storage_brandDescriptions <- c(storage_brandDescriptions,brandDescription)
  storage_prices <- c(storage_prices,price)
  storage_ratings <- c(storage_ratings,rating)
  storage_reviews<-c(storage_reviews,review)
}


# Create a data frame
product_storage <- data.frame(
  Category=c('Storage'), 
  Brands = storage_brandDescriptions, 
  Price = storage_prices, 
  Rating = storage_ratings,
  Review=storage_reviews)


Activity1_Geraldoy<-rbind(product_tablet, product_storage)
write.csv(Activity1_Geraldoy, file = "Activity1_Geraldoy.csv")




