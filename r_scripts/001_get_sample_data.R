##### ##### #####     Sample data iowa gambling task   ##### ##### #####
#                               for hbayesdm 
#         


## LOAD required packages
require(dplyr)


# ------ 1) READ in / write data to .RData / .csv and vice versa -------

## load .RData image
load('./Desktop/sdata_igt.RData')


# ------ 2) ADD gain & loss columns ------------------------------------

## Which deck and which card
## (little to many ifs, sorry, but it works)
for (i in 1:nrow(sample_data)) {   
  
  if (sample_data[i, 3] == 1 ) {
    
    if (sample_data[i, 4] == 1) {
      sample_data[i, 7] <- 100
      sample_data[i, 8] <- 0
    } else if (sample_data[i, 4] == 2) {
      sample_data[i,7] <- 100
      sample_data[i,8] <- 0
    } else if (sample_data[i, 4]  == 3) {
      sample_data[i,7] <- 100
      sample_data[i,8] <- 0  
    } else if (sample_data[i, 4]  == 4) {
      sample_data[i,7] <- 100
      sample_data[i,8] <- 0
    } else if (sample_data[i, 4]  == 5) {
      sample_data[i,7] <- 100
      sample_data[i,8] <- 0 
    } else if (sample_data[i, 4]  == 6) {
      sample_data[i,7] <- 100
      sample_data[i,8] <- -150
    } else if (sample_data[i, 4]  == 7) {
      sample_data[i,7] <- 100
      sample_data[i,8] <- -200
    } else if (sample_data[i, 4]  == 8) {
      sample_data[i,7] <- 100
      sample_data[i,8] <- -250
    } else if (sample_data[i, 4]  == 9) {
      sample_data[i,7] <- 100
      sample_data[i,8] <- -300
    } else if (sample_data[i, 4]  == 10) {
      sample_data[i,7] <- 100
      sample_data[i,8] <- -350
    }
    
  } else if (sample_data[i, 3] == 2 ) {
    
    if (sample_data[i, 4] == 1) {
      sample_data[i, 7] <- 50
      sample_data[i, 8] <- 0
    } else if (sample_data[i, 4] == 2) {
      sample_data[i,7] <- 50
      sample_data[i,8] <- -250
    }
    
  } else if (sample_data[i, 3] == 3 ) {
    
    if (sample_data[i, 4] == 1) {
      sample_data[i, 7] <- 50
      sample_data[i, 8] <- 0
    } else if (sample_data[i, 4] == 2) {
      sample_data[i,7] <- 50
      sample_data[i,8] <- 0
    } else if (sample_data[i, 4] == 3) {
      sample_data[i,7] <- 50
      sample_data[i,8] <- 0  
    } else if (sample_data[i, 4] == 4) {
      sample_data[i,7] <- 50
      sample_data[i,8] <- 0
    } else if (sample_data[i, 4] == 5) {
      sample_data[i,7] <- 50
      sample_data[i,8] <- 0 
    } else if (sample_data[i, 4] == 6) {
      sample_data[i,7] <- 50
      sample_data[i,8] <- 0
    } else if (sample_data[i, 4] == 7) {
      sample_data[i,7] <- 50
      sample_data[i,8] <- 0
    } else if (sample_data[i, 4] == 8) {
      sample_data[i,7] <- 50
      sample_data[i,8] <- -25
    } else if (sample_data[i, 4] == 9) {
      sample_data[i,7] <- 50
      sample_data[i,8] <- -50
    } else if (sample_data[i, 4] == 10) {
      sample_data[i,7] <- 50
      sample_data[i,8] <- -75
    }
    
  } else if  (sample_data[i, 3] == 4 ) {
    if (sample_data[i, 4] == 1) {
      sample_data[i, 7] <- 100
      sample_data[i, 8] <- 0
    } else if (sample_data[i, 4] == 2) {
      sample_data[i,7] <- 100
      sample_data[i,8] <- -1250 
    }
    
  }
  
}
rm(i)


# ------ 2) RENAME new columns -----------------------------------------
names(sample_data)[7:8] <- c('gain', 'loss')

