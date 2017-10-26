class CreatePokemons < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :type
      t.string :description
      t.integer :number

      t.timestamps
    end
  end
end
