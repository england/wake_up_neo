module WakeUpNeo
  class Railtie < Rails::Railtie

    rake_tasks do
      load "tasks/wake_up_neo.rake"
    end

  end
end