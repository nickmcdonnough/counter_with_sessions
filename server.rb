require 'sinatra'
require 'sinatra/reloader'

# sessions are disabled by default so we have to enable them.
enable :sessions
set :session_secret, 'this shouldnt be here' # use an env var instead

get '/' do
  # TODO: set @counter to 0 if there is no value saved for the
  #       counter in the session otherwise set it to the value
  #       stored in the session.
  erb :index
end

post '/increment' do
  # TODO: access the counter key in the session hash and increment it
  redirect to '/'
end

post '/decrement' do
  # TODO: access the counter key in the session hash and decrement it
  redirect to '/'
end

