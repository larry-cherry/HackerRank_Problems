require 'net/http'
require 'json'
require 'pry'

def getTopicCount(topic) 
  uri = URI("https://en.wikipedia.org/w/api.php?action=parse&section=0&prop=text&format=json&page=#{topic}")
  response_string = Net::HTTP.get(uri)
  json = JSON.parse(response_string)

  binding.pry
end

getTopicCount("france")