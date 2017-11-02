class AddFootprintsToPokemons < ActiveRecord::Migration[5.1]
  def change
    add_column :pokemons, :footprint, :string
  end
end
