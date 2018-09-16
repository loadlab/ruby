require 'httparty'

class Resource
    BASE_URL = 'https://api.loadlab.co/v1'

    def initialize(api_token, path)
        @path = path
        @headers = {
            Authorization: "Token #{api_token}",
            Accept: 'application/json',
        }         
    end

    def get
        HTTParty.get(BASE_URL + @path, headers: @headers)
    end

end


module LoadLab
    class Client
        attr_reader :plans, :jobs, :sites

        def initialize api_token
            @plans = Resource.new(api_token, '/plans/')
            @jobs = Resource.new(api_token, '/jobs/')
            @sites = Resource.new(api_token, '/sites/')
        end  
    end
end