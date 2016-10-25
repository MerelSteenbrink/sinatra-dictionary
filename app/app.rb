  require 'open-uri'
  require 'json'
require 'sinatra'



get "/" do
  "we do it!!"
  erb :form
end

post "/translation" do
  @word = params[:word]
  #{}"The word we are searching is... #{params[:word]}"

    api_url = "http://api.wordreference.com/0.8/80143/json/enfr/#{@word}"
    output = open(api_url).read
    @translation = JSON.parse(output)["term0"]["PrincipalTranslations"]["0"]["FirstTranslation"]["term"] || "no translation"



  erb :translation

end

# get "/translation" do
#   "cabooom"
#   erb :translation
# end

