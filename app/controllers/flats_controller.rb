require "open-uri"

class FlatsController < ApplicationController
  FLATS_URL = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
  before_action :set_flats

  def index
    # @flats get loaded thanks to the method set_flats ran before the action
  end

  def show
    # @flats get loaded thanks to the method set_flats ran before the action
    flat_id = params[:id].to_i
    @flat = @flats.find { |flat|  flat["id"] == flat_id }
  end

  def set_flats
    @flats = JSON.parse(open(FLATS_URL).read)
  end
end
