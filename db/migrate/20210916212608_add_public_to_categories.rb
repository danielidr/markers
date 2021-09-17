class AddPublicToCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :public, :boolean
  end
end
