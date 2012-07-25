# WakeUpNeo

Heroku is awesome!
But [single web dyno idling](https://devcenter.heroku.com/articles/dynos#dyno_idling) makes some problems if you run only background jobs, such as Sidekiq/Resque...
WakeUpNeo - rake task that you can run through [Heroku Scheduler](https://addons.heroku.com/scheduler), in order to "wake up" dyno.

## Installation

Add this line to your application's Gemfile:

    gem 'wake_up_neo', git: 'https://github.com/england/wake_up_neo.git'

And then execute:

    $ bundle

## Usage

Run:

    rails g wake_up_neo:install

Configure 'config/initializers/wake_up_neo.rb'

    WakeUpNeo.configure do |config|

      # Url what will touch
      # For example 'http://myapp.heroku.com'
      config.knock_knock_url = ''

    end

Add

    rake wake_up_neo:knock_knock

in sheduled jobs.


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
