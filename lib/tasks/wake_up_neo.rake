namespace :wake_up_neo do

  desc 'Touch knock_knock_url'
  task knock_knock: :environment do
    WakeUpNeo.knock_knock
  end

end