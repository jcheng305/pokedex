class PokemonsController < ApplicationController

  def index
    @pokemons = Pokemon.search(params[:search])
    @pkm = Pokemon.paginate(page: params[:page], per_page: 9)
  end

  def show
    @pokemon = Pokemon.find(params[:id])
  end
end
