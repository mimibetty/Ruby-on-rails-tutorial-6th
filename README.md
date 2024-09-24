# README

# Ruby on Rails Tutorial sample application

This is the sample application for
[*Ruby on Rails Tutorial:
Learn Web Development with Rails*](https://www.railstutorial.org/)
(6th Edition)
by [Michael Hartl](https://www.michaelhartl.com/).

## License

All source code in the [Ruby on Rails Tutorial](https://www.railstutorial.org/)
is available jointly under the MIT License and the Beerware License. See
[LICENSE.md](LICENSE.md) for details.

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ gem install bundler -v 2.2.17
$ bundle _2.2.17_ config set --local without 'production'
$ bundle _2.2.17_ install

 bundle install
 rails db:migrate
 rails db:seed

// fix webpacker
yarn add webpack@4
yarn add webpack-cli@3.3.0
yarn add @rails/webpacker

 rails webpacker:install
 bundle exec rubocop -A

```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```
test a specific file....
$ rails test test/controllers/static_pages_controller_test.rb
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

yarn add jquery@3.4.1 bootstrap@3.4.1




After cloning a repo:

    Run bundle install to install Ruby gems
    Run yarn install to install JavaScript packages
    Run rails webpacker:install to set up Webpacker
    Run rails webpacker:compile to compile your assets



Run below command to inspect your coding style:

```bash
bundle exec rubocop .
```
```bash
bundle exec rubocop -A
```

When you create a pull request, make sure this is GREEN in Github Action before request a review

For more information, see the
[*Ruby on Rails Tutorial* book](https://www.railstutorial.org/book).
user = User.new(name: "thanhminh", email: "thanhminh@gmail.com", password: "123456", password_confirmation: "123456")
user.save
user = User.new(name: "thanhminh1", email: "thanhminh1@gmail.com", password: "123456", password_confirmation: "123456")
user.save
user = User.new(name: "thanhminh2", email: "thanhminh2@gmail.com", password: "123456", password_confirmation: "123456")
user.save

user.errors.full_messages


rails db:migrate:reset
