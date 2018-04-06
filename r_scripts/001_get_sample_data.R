##### ##### #####     Sample data iowa gambling task   ##### ##### #####
#                               for hbayesdm 
#         


## LOAD required packages
require(dplyr)

# ------ Create data frame from pilot subjects -------------------------

# ## NOT RUN
# dat_1 <- read.table('/Volumes/TOSHIBA/JOSE/EXPERIMENTS/RavenClaw/Ravenclaw/Log_Files/103rawdata.txt',
#                     sep = ',')
# dat_2 <- read.table('/Volumes/TOSHIBA/JOSE/EXPERIMENTS/RavenClaw/Ravenclaw/Log_Files/104rawdata.txt',
#                     sep = ',')
# dat_3 <- read.table('/Volumes/TOSHIBA/JOSE/EXPERIMENTS/RavenClaw/Ravenclaw/Log_Files/106rawdata.txt',
#                     sep = ',')
#
# data <- rbind(dat_1, dat_2, dat_3)
# rm(dat_1, dat_2, dat_3)
# 
# data <- select(data, V2, V4, V6, V8, V10, V12)
# names(data) <- c('block', 'trial_nr', 'deck', 'card', 'rt', 'payoff')

# ## FILTER  only block 1
# sample_data <- filter(data, block == 1)
# rm(data)

# ## Clean up the data set
# sample_data <- sample_data[-41, ]
# sample_data$deck <- as.factor(sample_data$deck)

# ------ Save data frame -----------------------------------------------
# ## NOT RUN
# write.table(sample_data, '~/Desktop/sdata_igt.txt', sep = '\t')
# save.image("~/Desktop/sdata_igt.RData")

# ------ 1) READ in the data ----------------------------------------
load('./Documents/GitHub/MSc_Thesis/sample_data/sdata_igt.RData')


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


# ------ 3) RENAME and ADD columns for model ------------------------
names(sample_data)[7:8] <- c('gain', 'loss')

## Reorder the decks to match original IGT
sample_data$choice <- plyr::revalue(sample_data$deck, c('1' = 'A', '2' = 'D', '3' = 'C', '4' = 'B'))

## ADD Subject ID
sample_data$subjID <- c(rep(1, 99), rep(2:3, each = 100))
write.table(sample_data, './Documents/GitHub/MSc_Thesis/sample_data/sdata_igt.txt', sep = '\t')