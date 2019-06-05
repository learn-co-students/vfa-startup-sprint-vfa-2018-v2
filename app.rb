require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    @error = params['error']
    erb :home
  end

  get '/images/learnco.jpg' do
    "Hello World"
  end

  post '/subscribe' do
    @full_name = params[:full_name]
    @email = params[:email]
    @city_name = params[:city_name]

    if !@email.match(/.+@.+/)
      redirect to('/?error=email')
    end

    erb :subscribe
  end
  get '/reddit' do
    # TODO: we can probably get Reddit listings with something like:
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
    
    @day_after = [
      ['8:00am', 'Breakfast'],
      ['8:30am', 'Check In'],
      ['9:00am', 'Credo'],
      ['9:30am', 'Learning How to Start Up'],
      ['12:00pm', 'Lunch'],
      ['1:00pm', 'Being a Fellow'],
      ['6:30pm', 'Group Dinner'],
    ]


    erb :schedule
  end

  # TODO: redirect /home to root
  get '/home' do
    redirect to('/')
  end
  # TODO: design and implement /training page

  # TODO: add /team page
  get '/team' do
    "Hello World"
    erb :team
  end
  # TODO: add /video page

  # TODO: add /rainbow easter egg page
end
