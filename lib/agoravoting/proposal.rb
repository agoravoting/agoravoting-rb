module Agoravoting
  class Proposal
    attr_accessor :title, :description

    def initialize(attributes = {})
      @title  = attributes[:title]
      @description = attributes[:description]
    end
  end
end
