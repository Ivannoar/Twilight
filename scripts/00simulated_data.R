set.seed(1234)

simulated_data <-
  tibble(
    'Date' = sample(seq(as.Date('2022/04/05'), as.Date('2022/04/23'), by="day"), 10, replace = TRUE),
         
    'Time' = sample(format(seq(as.POSIXct('00:00:00', format = "%T"), 
                    as.POSIXct('23:59:59', format = "%T"), by = "sec"), "%T"), 10, replace = TRUE),
    'Location' = sample(countrycode::codelist$country.name.en, 10),     
    'Score' = sample(x = c('1/6', '2/6', '3/6', '4/6', '5/6', '6/6', 'DNF'), 10, replace = TRUE),
    'Hardmode' = sample(c(TRUE, FALSE), 10, replace = TRUE)
  )
view(simulated_data)