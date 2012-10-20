# DeviseCouchrestModel

Devise extension for couchrest_model

## Installation

Add this line to your application's Gemfile:

    gem 'devise_couchrest_model'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install devise_couchrest_model

## Usage

1. run devise install
2. Add devise hook to your couchrest_model Model

Note: not all the tests are passed, use this gem at your own risk

## Run Tests

You need CouchDB running at localhost to run the tests

Default test db is http://locahost:5984/devise-test-suite without admin

    git clone https://github.com/winfield/devise_couchrest_model.git
    git clone https://github.com/plataformatec/devise.git
    cd devise_couchrest_model
    bundle install
    rake test

Currently, not all the tests are passed, if you can fix the tests, I'd appreciate your helps.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
