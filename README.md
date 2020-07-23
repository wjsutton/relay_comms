<h1 style="font-weight:normal">
  Relay Comms 
</h1>


[![Status](https://www.repostatus.org/badges/latest/wip.svg)]() [![GitHub Issues](https://img.shields.io/github/issues/wjsutton/relay_comms.svg)](https://github.com/wjsutton/relay_comms/issues) [![GitHub Pull Requests](https://img.shields.io/github/issues-pr/wjsutton/relay_comms.svg)](https://github.com/wjsutton/relay_comms/pulls) [![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)

A repo for testing connections to various web services to be run anywhere.

:construction: Repo Under Construction :construction: 

[Twitter][Twitter] :speech_balloon:&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;[LinkedIn][LinkedIn] :necktie:&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;[GitHub :octocat:][GitHub]&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;[Website][Website] :link:


<!--
Quick Link 
-->

[Twitter]:https://twitter.com/WJSutton12
[LinkedIn]:https://www.linkedin.com/in/will-sutton-14711627/
[GitHub]:https://github.com/wjsutton
[Website]:https://wjsutton.github.io/

### :a: About

This a the working space for code that tests communication channels, e.g. Slack, googlesheets, dropbox, etc.

### :checkered_flag: Getting Started

The project is built using R version 3.6.2, requires Rtools(available here: [https://cran.r-project.org/bin/windows/Rtools/](https://cran.r-project.org/bin/windows/Rtools/)) for Windows Systems.

#### :package: Packages

This project leverages the [renv](https://rstudio.github.io/renv/articles/renv.html) package formanaging library paths and package caching.

The script `install_packages.R` installs required packages using the `renv::install()` function. 

#### Slack App Setup

You need to set up a slack app here: [https://api.slack.com/apps](https://api.slack.com/apps) and install it to you workspace, for testing I have created my own workspace to install my app to.

**Scopes (what you allow your Slack app to do)**

For this project I've allow my slack app the following:

- chat:write (send messages as @my_app)
- file:write (send, edit and delete files)
- groups:write (manage private channels added to)
- im:write (send direct mesages to people)
- incoming-webhook (post messages in a specific Slack channel)

#### `.Renviron` file

A .Renviron is required to store the projects environment variables, of the form:

```
SLACK_API_TOKEN = my_slack_api
SLACK_CHANNEL = my_slack_channel
SLACK_USERNAME = my_slack_username
SLACK_WEBHOOK = my_slack_webhook

```

### Relay Channels

#### Slack

The script `test_workflow.R` will send 3 basic slack messages to a channel. The process of this script is:
- Run a check to see the correct packages are installed and libraries are loaded
- Create the credentials file from environment variables stored in the `.Renviron` file
- Send test slack messages


### :thinking: TO DO List:

- [x] Test on another Windows machine
- [ ] Test on a linux machine (Raspberry Pi)
- [ ] Build a Docker image for Project
- [ ] Test Docker image on AWS
- [ ] Add other communication channels (dropbox, googlesheets, etc.)

