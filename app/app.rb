require 'sinatra'



get "/" do
  "we do it!!"
  erb :form
end

get "/translation" do
  "cabooom"
  erb :translation
end
