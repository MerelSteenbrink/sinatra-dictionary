require 'open-uri'
require 'json'



def get_trans(user_input)
  api_url = "http://api.wordreference.com/0.8/80143/json/enfr/#{user_input}"
  output = open(api_url).read
  translation = JSON.parse(output)["term0"]["PrincipalTranslations"]["0"]["FirstTranslation"]["term"]
  translation.nil? ? "no translation" : translation
end

