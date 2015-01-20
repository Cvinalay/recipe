class CreateRecipe2s < ActiveRecord::Migration
  def change
    create_table :recipe2s do |t|
      t.string :title
      t.string :string
      t.string :url
      t.string :string
      t.string :ingredients
      t.string :string
      t.string :steps
      t.string :string

      t.timestamps
    end
  end
end
