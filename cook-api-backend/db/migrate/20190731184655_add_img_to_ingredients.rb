class AddImgToIngredients < ActiveRecord::Migration[5.2]
  def change
    add_column :ingredients, :img_url, :string
  end
end
