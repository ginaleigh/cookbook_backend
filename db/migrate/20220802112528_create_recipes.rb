class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :information
      t.text :ingredients
      t.text :instructions
      t.string :notes
      t.integer :preptime
      t.integer :cooktime
      t.string :category
      t.string :method
      t.string :cuisine
      t.string :nutrition
      t.string :facts
      t.string :keywords

      t.timestamps
    end
  end
end
