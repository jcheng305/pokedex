class PokemonsController < ApplicationController

  def index
    @pokemons = Pokemon.search(params[:search])
  end

  def show
    @pokemon = Pokemon.find(params[:id])
  end
  
end
