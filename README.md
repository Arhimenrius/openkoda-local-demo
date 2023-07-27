# How to install

## Prerequisites

- Git
- Docker
- Docker compose

## How to run

Execute `./init-openkoda.sh`, and follow steps in CLI

After that is done, run `docker compose up` And wait until Openkoda page will start loading (Openkoda needs a moment to start)

Links:
- [Openkoda](https://openkoda.demo.test/) (https://openkoda.demo.test/)
- [Database UI](https://dbui.demo.test/) (https://dbui.demo.test/)

## Update

If you want to update Openkoda, delete `openkoda` directory and run `./rebuild-openkoda.sh`

## User

Currently, to setup your user as a global admin, you have to modify its role directly in the database (as well as set the account to be enabled, if you are not able to send verification email)