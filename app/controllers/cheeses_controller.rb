class CheesesController < ApplicationController
  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  def show
    # find cheese using id from the url
    # send jsom response using that cheese object
    cheese = Cheese.find_by(id: params[:id])
    render json: cheese

  end
end
