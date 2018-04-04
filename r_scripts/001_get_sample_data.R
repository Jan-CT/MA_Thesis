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
      sample_data[i, 7] <- 200
      sample_data[i, 8] <- 150
    } else if {
      
      
    }

  } else if (deck == 2) {
    
    
  } else if (deck == 3) {
    
    
  } else if (deck == 4) {
    
    
  }

}


# ------ 2) RENAME new columns -----------------------------------------

names(sample_data)[7:8] <- c('gain', 'loss')
