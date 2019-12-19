# VotingAppDocker
## Introduction
In order to keep this demo project as real as posible i built an Application in a non-monolitic approach, for this we have an **UI** (user interface) and a **Backend**, this application is deplyed using **Docker containers** with docker-compose all of this over **AWS infrastrcutre** deployed using **Ansible** so a the end of the day we have four repositories.
1. **UI:** https://github.com/jpablo1286/VotingAppUI
2. **Backend:** https://github.com/jpablo1286/VotingAppBackend
3. **Docker containers :** https://github.com/jpablo1286/VotingAppDocker
4. **Ansible Playbooks:** https://github.com/jpablo1286/VotingAppAnsible

## Check the working app visiting this link http://votingapp.juanrivera.org/ ##


# Docker Containers

this repository builds all the environment (UI, Backend and Database) needed for the application, Using docker-compose this reposotory setup a MySQL database and apply migrations and seeds, deploy a backend API using the latest version of the code, in the same way deploys an UI container.

### Usage: ###
> docker-compose up -d
