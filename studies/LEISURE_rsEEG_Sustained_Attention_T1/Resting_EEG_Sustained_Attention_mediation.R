library(readxl)
library(devtools)
library(processR)
source("process.R")

df <- read_excel("LEISURE_T1_SART_CANTAB_rsEEG_data_fullsam_revisions.xlsx")

# Define variables
# Age, Dprime, Alpha_CF_parietooccipital, Exponent_global
Y <- "Dprime"
X <- "Age"
M <- "Exponent_global"
covariates <- c("Education_years_OA", "Gender_F")

# Specify the path to the output file
output_file <- "mediation_analysis_output2.txt"

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
