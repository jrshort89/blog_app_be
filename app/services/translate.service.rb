require "google/cloud/translate"

class TranslateService

    def self.call(*args, &block)
        new(*args, &block).call
    end

    def initialize(attribute)
      @attribute = attribute
    end

    def call
        
    end
end