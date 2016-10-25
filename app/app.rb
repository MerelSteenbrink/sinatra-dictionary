require 'sinatra'



get "/" do
  "we do it!!"
  erb :form
end

post "/translation" do
  @word = params[:word]
  #{}"The word we are searching is... #{params[:word]}"
  erb :translation
end

# get "/translation" do
#   "cabooom"
#   erb :translation
# end

