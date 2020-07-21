# Create a .slackr file
library(here)

fileConn <- file(here::here(".slackr"))

writeLines(
  paste0(
    "api_token: ",Sys.getenv("SLACK_API_TOKEN"),"\n",
    "channel: #",Sys.getenv("SLACK_CHANNEL"),"\n",
    "username: ",Sys.getenv("SLACK_USERNAME"),"\n",
    "incoming_webhook_url: ",Sys.getenv("SLACK_WEBHOOK")
  )
, fileConn)  
  
close(fileConn)