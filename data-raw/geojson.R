## code to prepare `geojson` dataset goes here

u_earthquakes <- "https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/2.5_day.geojson"
r_earthquakes <- httr::GET(u_earthquakes)
earthquakes <- httr::content(r_earthquakes, simplifyDataFrame = TRUE)$features

usethis::use_data(earthquakes, overwrite = TRUE)
