module WakeUpNeo
  module Config
    attr_accessor :knock_knock_url

    def configure
      yield self
    end

    def knock_knock_url
      if @knock_knock_url && !@knock_knock_url.blank?
        @knock_knock_url
      else
        raise "You must specify knock_knock_url in config/initializers/wake_up_neo.rb"
      end
    end

  end
end