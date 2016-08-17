class AddSlugToPressreleases < ActiveRecord::Migration
  def change
    add_column :pressreleases, :slug, :string
    add_index :pressreleases, :slug, unique: true
  end
end
