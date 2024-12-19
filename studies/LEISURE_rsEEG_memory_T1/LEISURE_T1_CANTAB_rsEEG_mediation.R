library(devtools)
library(processR)
source("process.R")

df <- read.csv ("data/LEISURE_T1_demo_CANTAB_NP_rsEEG_CLEAN.csv")

# Define variables
Y <- "DMSPCAD_z"
X <- "Age_zscore"
M <- "Exponent_fc_zscore"
covariates <- c("Education", "Gender_F", "Handedness_right")

# Specify the path to the output file
output_file <- "results/mediation_analysis_Exponent_fc_DMSPCAD.txt"

# Open a connection to the output file
sink(output_file)

# Run mediation
process(data = df,
        y = Y,
        x = X,
        m = M,
        cov = covariates,
        model = 4,
        boot = 5000,
        total = 1,
        stand = 1,
        save = 1)

# Close the connection to the output file
sink()
