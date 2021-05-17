require "open-uri"

class FlatsController < ApplicationController
  def index
    # ActiveRecord (tomorrow)
    # @flats = Flat.all
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)
  end

  def show
    # ActiveRecord (tomorrow)
    # @flat = Flat.find(params[:id])
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)
    @flat = @flats.find { |flat| flat['id'] == params[:id].to_i }
  end
end
