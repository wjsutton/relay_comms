
# START

# Check Packages are installed
if("slackr" %in% rownames(installed.packages()) == FALSE) {renv::install("slackr")}
if("here" %in% rownames(installed.packages()) == FALSE) {renv::install("here")}

# Load Packages
library(slackr)
library(here)

# Build Credentials, if not available
if(!file.exists(here::here(".slackr"))){
  source(here::here("create_slackr_credentials.R"))
}

# Send out test message
source(here::here("send_test_slackr_message.R"))

# END
