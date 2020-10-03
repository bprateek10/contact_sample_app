# Contact Sample App

A Sample Web Application built on Ruby on Rails to submit user details.

# Installation Steps

## Step 1 - Install prerequisites

Install Ruby-2.6.4

    $ rvm install 2.7.1

## Step 2 - Clone the Repository

    $ git clone https://github.com/bprateek10/contact_sample_app.git
    $ cd online-forum

## Step 3 - Bundle

Run following commands on terminal in your root directory

    $ gem install bundler
    $ bundle install

## Step 4 - Create database

Create database.yml file in config folder from database.yml.example present in config folder itself. Replace the databse username and password with your's credentials

Now in terminal run following commands

    $ rails db:create
    $ rails db:migrate

## Step 5 - Run rails server

You can run Rails server by running following command in terminal in root directory

    $ rails server

Also run the webpack dev server for assets compilation in development mode using following command in root directory

    $ ./bin/webpack-dev-server

Now the application is running on http://localhost:3000.
