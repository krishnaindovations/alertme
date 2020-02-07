# README

## Functionality

This app allow the user to view the list of available channels and the Tv Shows telecasting on that channel with telecast Time.

User can mark any Tv Show as favourite and get notified 30 minutes prior to show telecast.


## Features

* User Login
* User can search through list with channel name or show time
* User can add Any Tv Show to favourite list
* User can remove a particular TV show from favourites
* User gets notified 30 minutes prior to show telecast time through email.

## Gems Used

* Devise for Login
* Datatables for search
* Bootstarp for HTML styling
* whenever for sheduling the JOB to run rake task every 30 minutes

The core functionality is done. Need to improve the UI because of the time constrint could not make the UI updates.

Rails Version Used -> 6.0.2.1
ruby version -> ruby 2.6.3p62

To run the app you need to have postgres installed in the machine and need to update your database.yml with your postgres username and password.

Added Seed data to seed.rb file

$ rake db:create
$ rake db:migrate
$ rake db:seed
$ rails s

You will be Good to open your app now :)
