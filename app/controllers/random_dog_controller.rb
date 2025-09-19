class RandomDogController < ApplicationController
  def index
    response = Faraday.get("https://dog.ceo/api/breeds/image/random")
    @dog_url = response.success? ? JSON.parse(response.body)["message"] : nil
  end
end
