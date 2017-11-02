class AddGifsToPokemons < ActiveRecord::Migration[5.1]
  def change
    add_column :pokemons, :gif, :string

  end
end
