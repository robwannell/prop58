class AddCategoryToEndorsements < ActiveRecord::Migration
  def change
    add_column :endorsements, :category, :string
  end
end
