class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string :url
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
