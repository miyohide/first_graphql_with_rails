class AddCategoryToPhoto < ActiveRecord::Migration[6.0]
  def change
    add_column :photos, :category, :string, default: 'PORTRAIT'
  end
end
