class CreateMarkers < ActiveRecord::Migration[5.2]
  def change
    create_table :markers do |t|
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
