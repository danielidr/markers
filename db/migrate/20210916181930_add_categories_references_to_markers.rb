class AddCategoriesReferencesToMarkers < ActiveRecord::Migration[5.2]
  def change
    add_reference(:markers, :category, foreign_key: true)
  end
end
