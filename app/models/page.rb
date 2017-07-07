require 'wp_api_client'

class Page
  def initialize
    WpApiClient.configure do |api_client|
      api_client.endpoint = 'http://libraries.mit.edu/wp-json/wp/v2'
    end
  end

  def index
    WpApiClient.get_client.get('pages')
  end

  def show(id, type)
    WpApiClient.get_client.get("#{type}s/#{id}")
  end
end
