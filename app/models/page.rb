require 'wp_api_client'

class Page
  def initialize
    WpApiClient.configure do |api_client|
      api_client.endpoint = 'http://libraries.mit.edu/wp-json/wp/v2'
    end

    @api = WpApiClient.get_client
  end

  def index
    @api.get('pages')
  end
end
