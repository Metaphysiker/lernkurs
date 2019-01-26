#!/usr/bin/env bash

heroku pg:reset --confirm lernkurs
heroku run rails db:migrate
heroku run rails db:seed
heroku open
