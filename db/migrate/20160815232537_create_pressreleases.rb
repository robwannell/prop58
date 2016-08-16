class CreatePressreleases < ActiveRecord::Migration
  def change
    create_table :pressreleases do |t|
      t.string :title
      t.datetime :publish_at
      t.text :intro
      t.text :body

      t.timestamps null: false
    end
  end
end
