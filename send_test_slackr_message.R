# Send test slack message to #general channel

# Load libraries
library(slackr)
library(here)

# Load slackr configuration file
slackr_setup(config_file = here::here(".slackr"))

# Create messages 
the_time_is <- paste0("It is, ",Sys.time())
machine_type <- paste0("This is a ",Sys.info()[1][[1]]," machine")

# Send messages
slackr_bot("beep boop...")
slackr_bot(the_time_is)
slackr_bot(machine_type)
