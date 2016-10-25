require 'sinatra'


get '/' do
  erb :form
end

get '/translation' do
  erb :translation
end
