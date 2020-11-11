# Stockit

Stockit allows you to track inventories of supplies, collectibles, etc. with increased accuracy and visibility. Search your collection by item name and document images, category, quantity, and expiration dates.

## Prerequisites

This app was built with Ruby 2.7 & Rails 6.0.3. Both need to be installed to run this program.

## Set Up

1. From the command line, set up a new directory on your machine:

   `$ mkdir stockit`

   `$ cd stockit`

2. Clone the github repository

   `$ git clone https://github.com/jennantilla/forum.git`

3. Create and setup the database

   `$ bundle exec rake db:create`

   `$ bundle exec rake db:setup`

4. Run the Rails server

   `$ rails server`

5. Navigate your browser to [http://localhost:3000](http://localhost:3000) to view the app

## App Features

### Secure User Login

Stockit's User model was implemented with the Devise gem. This allows for secure user account creation and management.

### ActiveStorage Images

Stockit allows users to upload and store images in their inventories. This functionality is impelemented with Active Storage, which comes built-in with Rails 5.2+. To add Active Storage tables to your database, simply run:

```
$ rails active_storage:install
$ rake db:migrate
```

Also make sure to update your related model(s) with a `has_one_attached :img` and add :img to your strong parameters in your controller(s).

### Search

Stockit has a simple search bar that allows a user to search their inventory by item name. It is implemented with a class method: `def self.search(search)` on the Inventory model.
