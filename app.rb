require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :home
  end

  get '/reddit' do
    # TODO: we can probably get the listings with something like:
    # JSON.parse(RestClient.get('http://reddit.com/.json'))

    @listings = []

    erb :reddit
  end
end
