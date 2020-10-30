# Write your code here
require "pry"
require "json"
require "open-uri"
require "net/http"

class GetRequester

    attr_accessor :url

    def initialize(url)
        self.url = url
    end

    def get_response_body # sends a GET request to the URL passed in on initialization. This method should return the body of the response.
        uri = URI.parse(url)
        uri.open.string
        # Net::HTTP.get_response(uri).body # synonym to previous line
    end

    def parse_json # return a Ruby Array or Hash made up of data converted from the response
        JSON.parse(get_response_body)
    end

end