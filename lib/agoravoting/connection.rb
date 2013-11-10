module Agoravoting
  class Connection
    attr_accessor :connection
    
    def initialize
      @connection = Faraday.new(:url => api_url) do |faraday|
        faraday.response :mashify                 # convert json hash to an object
        faraday.response :json                    # convert response to a json hash
        faraday.response :logger                  # log requests to stdout
        faraday.adapter  Faraday.default_adapter  # make requests with net::htt
      end
    end
    
    def get_request(url)
      connection.get do |req|
        req.url url + "/"
        req.headers['Content-Type'] = 'application/json'
      end
    end

    def post_request(url, params = {})
      connection.post do |req|
        req.url url + "/"
        req.headers['Content-Type'] = 'application/json'
        req.body = params.to_json
      end
    end
        
    def api_url
      "http://localhost:8000/api/v1/"
    end
  end
end
