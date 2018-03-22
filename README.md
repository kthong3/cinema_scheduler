# Cinema Scheduler
A Ruby on Rails web application that will allow users to view films and film screenings.

The goal of this application will allow users to view films and film screening information while the Admin is able to add new cinemas, films and create screenings.

## Tech Stack
Ruby 2.5.0
Rails 5.1.4
Postgresql 10

## System requirements to run locally
Must have on your machine:
  - Ruby on Rails: `rails` and `ruby` (possibly through RVM or rbenv)
  - `git`
  - PSQL (`postgresql`)

## Running locally
- Clone the git repository to your local machine.
- Install the Bundler gem if you do not have it already: `gem install bundler`
- Bundle install the gems in the Gemfile: `bundle install`
- Create the database: `bundle exec rake db:create`
- Migrate the database: `bundle exec rake db:migrate`
- Fill the database with seed data: `bundle exec rake db:seed`
- Start the server:  `rails server` or simply `rails s` (hosts local server at `localhost:3000`)

## Challenges
- Users can view films without logging in
- Once logged in, Admin can create new cinemas and films but film screenings are not yet showing the correct screen times.