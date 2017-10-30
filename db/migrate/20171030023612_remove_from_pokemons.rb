class RemoveFromPokemons < ActiveRecord::Migration[5.1]
  def change
    remove_column :pokemons, :name, :string
    remove_column :pokemons, :type, :string
    remove_column :pokemons, :description, :string
    remove_column :pokemons, :number, :integer

  end
end
