##### ##### #####     Fit hirarchical Bayes DM to    ##### ##### #####
#                             IGT data  
#         


## LOAD required packages
require(hBayesDM)

# ------ 1) FIT hirarchical DDM  ------------------------------------

## FIT THE MODEL
output <- igt_pvl_decay(data = './Documents/GitHub/MSc_Thesis/sample_data/sdata_igt.txt', 
                        niter = 1000,
                        nwarmup = 500, 
                        nchain = 3, 
                        ncore = 2)

output_1 <- igt_vpp(data = './Documents/GitHub/MSc_Thesis/sample_data/sdata_igt.txt', 
                    niter = 1000, 
                    nwarmup = 500, 
                    nchain = 3, 
                    ncore = 2)

## PLOT estimates and trace
plot(output)
plot(output, 'trace')
plotInd(output, 'A') 
output$fit