class NewsController < ApplicationController
  ITEMS = {
    1 => {name: 'Mysterious UFOs over Stockholm', description: 'Grandpa saw it happen'},
    2 => {name: 'Big Chef Wins Again', description: 'Master Chef wins the Big Bacon'},
    3 => {name: 'Translocator Inc. Receives Big Order', description: 'The disruptive company does it again!'}
  }

  before_filter :authenticate_user!
  
  def index
    render json: ITEMS.map { |k, v| {id: k}.merge v }
  end
  
  def show
    render json: ITEMS[params[:id].to_i]
  end
end
