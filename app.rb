require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    @error = params['error']
    erb :home
  end

  post '/subscribe' do
    @full_name = params[:full_name]
    @email = params[:email]

    if !@email.match(/.+@.+/)
      redirect to('/?error=email')
    end

    erb :subscribe
  end

  get '/reddit' do
    # TODO: we can probably get the listings with something like:
    # JSON.parse(RestClient.get('http://reddit.com/.json'))

    @listings = []

    erb :reddit
  end

  get '/schedule' do
    @today = [
      ['7:00am', 'Wake up'],
      ['8:00am', 'Work Out'],
      ['9:00am', 'Product Meeting'],
      ['11:00am', 'Ping Pong Break'],
      ['1:00pm', 'Lunch'],
      ['3:00pm', 'Coffee Time'],
      ['6:30pm', 'Call it a day'],
    ]

    @tomorrow = [
      ['7:00am', 'Wake up'],
      ['8:00am', 'Work Out'],
      ['9:00am', 'Inbox Zero'],
      ['11:00am', 'Ping Pong Break'],
      ['1:00pm', 'Lunch'],
      ['3:00pm', 'Coffee Time'],
      ['6:30pm', 'Meetup Presentation'],
    ]

    # TODO: add a third day's schedule (@day_after)

    erb :schedule
  end
end
