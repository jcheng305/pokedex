class AddToPokemons < ActiveRecord::Migration[5.1]
  def change
    add_column :pokemons, :pokemon_id, :integer
    add_column :pokemons, :name, :string
    add_column :pokemons, :species, :string
    add_column :pokemons, :pokemon_type, :string
    add_column :pokemons, :height, :string
    add_column :pokemons, :weight, :string
    add_column :pokemons, :description, :string


  end
end
