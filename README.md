<<<<<<< HEAD
=======
# ruby-getting-started
>>>>>>> 5c25ed909604a7c3848e5ec7aa3733f3f69b4432


StartNow
CMPT 276, Project Proposal
October 21, 2016


Collaborators: Heidi Tong, Giovanni HoSang, Manpreet Kaur, David Tu, and Joanna Niemczyk

GITHUB URL: https://github.com/Collabotech/StartNow.git


WHAT’S STARTNOW?
StartNow is a web-application targeting Simon Fraser University students who want to work on projects outside of the classroom. Users of our application will be able to log in, create profiles, create project profiles, seek other people with the appropriate skillsets, join existing project groups, post on a project discussion board, create meeting locations, and communicate with fellow users using the chat feature to begin their collaborative process. These features will be discussed further in a latter section. 




WHY?
Projects often require a wide variety of skill sets. In fact, most if not all successful projects begin with a collaboration of sorts. The problem we face as university students is the difficulty of meeting people outside of our own faculties. The limited number of electives we take do not give us a chance to explore other fields. Furthermore, our studies require so much time that we often are unable to meet new people to share ideas with.


Whether a person has an idea but not the appropriate skills or vice versa, StartNow allows them to find the right people to collaborate with. 


In addition, our application aims to increase active behaviour from students. We wish to promote out-of-classroom work by making the process as easy as possible. 


_________________________________________________________________________________

Make sure you have Ruby installed.  Also, install the [Heroku Toolbelt](https://toolbelt.heroku.com/).

```sh
$ git clone git@github.com:heroku/ruby-getting-started.git
$ cd ruby-getting-started
$ bundle install
$ bundle exec rake db:create db:migrate
$ heroku local
```

Your app should now be running on [localhost:5000](http://localhost:5000/).

## Deploying to Heroku

```sh
$ heroku create
$ git push heroku master
$ heroku run rake db:migrate
$ heroku open
```

or

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

## Docker

The app can be run and tested using the [Heroku Docker CLI plugin](https://devcenter.heroku.com/articles/introduction-local-development-with-docker).

Make sure the plugin is installed:

    heroku plugins:install heroku-docker

Configure Docker and Docker Compose:

    heroku docker:init

And run the app locally:

    docker-compose up web

The app will now be available on the Docker daemon IP on port 8080.

To work with the local database and do migrations, you can open a shell:

    docker-compose run shell
    bundle exec rake db:migrate

You can also use Docker to release to Heroku:

    heroku create
    heroku docker:release
    heroku open

## Documentation

For more information about using Ruby on Heroku, see these Dev Center articles:

- [Ruby on Heroku](https://devcenter.heroku.com/categories/ruby)
