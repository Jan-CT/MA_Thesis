##### ##### #####     Sample data iowa gambling task   ##### ##### #####
#                               for hbayesdm 
#         


## LOAD required packages
require(dplyr)


# ------ 1) READ in / write data to .RData / .csv and vice versa -------

## load .RData image
load('./Desktop/sdata_igt.RData')


# ------ 2) ADD gain & loss columns ------------------------------------

# Which deck and which card
for (i in 1:nrow(sample_data)) {
  
  if (deck == 1)  {
    
    if (value == 1) {
      sample_data[i, 7] <- 100
      sample_data[i, 8] <- 0
    } else if (value == 2) {
      sample_data[i,7] <- 100
      sample_data[i,8] <- 0
    } else if (value == 3) {
      sample_data[i,7] <- 100
      sample_data[i,8] <- 0  
    } else if (value == 4) {
      sample_data[i,7] <- 100
      sample_data[i,8] <- 0
    } else if (value == 5) {
      sample_data[i,7] <- 100
      sample_data[i,8] <- 0 
    } else if (value == 6) {
      sample_data[i,7] <- 100
      sample_data[i,8] <- -150
    } else if (value == 7) {
      sample_data[i,7] <- 100
      sample_data[i,8] <- -200
    } else if (value == 8) {
      sample_data[i,7] <- 100
      sample_data[i,8] <- -250
    } else if (value == 9) {
      sample_data[i,7] <- 100
      sample_data[i,8] <- -300
    } else if (value == 10) {
      sample_data[i,7] <- 100
      sample_data[i,8] <- -350
    }

  } else if (deck == 2) {
    
    if (value == 1) {
      sample_data[i, 7] <- 50
      sample_data[i, 8] <- 0
    } else if (value == 2) {
      sample_data[i,7] <- 50
      sample_data[i,8] <- -250
    
      
  } else if (deck == 3) {
   
    if (value == 1) {
      sample_data[i, 7] <- 50
      sample_data[i, 8] <- 0
    } else if (value == 2) {
      sample_data[i,7] <- 50
      sample_data[i,8] <- 0
    } else if (value == 3) {
      sample_data[i,7] <- 50
      sample_data[i,8] <- 0  
    } else if (value == 4) {
      sample_data[i,7] <- 50
      sample_data[i,8] <- 0
    } else if (value == 5) {
      sample_data[i,7] <- 50
      sample_data[i,8] <- 0 
    } else if (value == 6) {
      sample_data[i,7] <- 50
      sample_data[i,8] <- 0
    } else if (value == 7) {
      sample_data[i,7] <- 50
      sample_data[i,8] <- 0
    } else if (value == 8) {
      sample_data[i,7] <- 50
      sample_data[i,8] <- -25
    } else if (value == 9) {
      sample_data[i,7] <- 50
      sample_data[i,8] <- -50
    } else if (value == 10) {
      sample_data[i,7] <- 50
      sample_data[i,8] <- -75
    
  } else if (deck == 4) {
    
    if (value == 1) {
      sample_data[i, 7] <- 100
      sample_data[i, 8] <- 0
    } else if (value == 2) {
      sample_data[i,7] <- 100
      sample_data[i,8] <- -1250
    
  }

}


# ------ 2) RENAME new columns -----------------------------------------

names(sample_data)[7:8] <- c('gain', 'loss')
