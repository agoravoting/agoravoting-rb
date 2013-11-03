module Agoravoting
  class Agora
    attr_accessor :name, :description, :agoravoting_id

    def initialize(attributes = {})
      @name              = attributes[:name]
      @description       = attributes[:short_description]
      @agoravoting_id    = attributes[:id]
    end
    
    def self.all
      response = Connection.new.get_request("agora")
      if response.status == 200
        resources(response)
      else 
        raise response.inspect
      end
    end
    
    def self.resources(response)
      response.body.objects.map do |attributes|
        new(attributes)
      end
    end
  
  end
end