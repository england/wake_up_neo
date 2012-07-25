module WakeUpNeo
  module Generators
    class InstallGenerator < Rails::Generators::Base

      desc "Creates initializer file"
      def create_initializer_file
        create_file 'config/initializers/wake_up_neo.rb',
        <<-CONTENT
WakeUpNeo.configure do |config|
  # Url what will touch
  # For example 'http://myapp.heroku.com'
  config.knock_knock_url = ''
end
        CONTENT
      end

    end
  end
end