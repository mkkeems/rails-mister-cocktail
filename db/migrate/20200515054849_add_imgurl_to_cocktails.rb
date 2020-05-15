class AddImgurlToCocktails < ActiveRecord::Migration[6.0]
  def change
    add_column :cocktails, :imgurl, :string
  end
end
