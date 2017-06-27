  class Film < ApplicationRecord
  include HTTParty
  base_uri 'http://www.omdbapi.com/?i=tt3896198&apikey=36120b99'

  def self.generate
    random_number = rand(1)
    response = get("/#{random_number}")

    puts response["name"]
  end
end
