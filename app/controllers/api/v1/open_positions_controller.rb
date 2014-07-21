class API::V1::OpenPositionsController < ApplicationController

  respond to :json

  def index
    @open_positions = OpenPosition.all
  end

  def show
    @open_positions = OpenPosition.find(params[:id])
  end
end


