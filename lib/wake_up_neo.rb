require 'wake_up_neo/version'
require 'wake_up_neo/railtie'
require 'wake_up_neo/config'
require 'open-uri'

module WakeUpNeo
  extend Config

  def self.knock_knock
    open(knock_knock_url)
  end

end
