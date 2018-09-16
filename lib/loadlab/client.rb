class Resource
    include HTTParty
    PATH = nil
    BASE_URL = 'https://api.loadlab.co/v1'

    @api_token = api_token
    @headers = {
        Authorization: "Token #{api_token}",
        Accept: 'application/json',
    }    

    def get
        self.class.get(self.BASE_URL + self.PATH, @headers)
    end

end

class Plans < Resource
    PATH = '/plans/'
end

class Jobs < Resource
    PATH = '/jobs/'
end

class Sites < Resource
    PATH = '/sites/'
end


module LoadLab
    class Client
        def initialize api_token
            self.plans = Plans.new(api_token)
            self.pages = Jobs.new(api_token)
            self.sites = Sites.new(api_token)
        end  
    end
end