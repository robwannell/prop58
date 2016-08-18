class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.text :intro
      t.text :body
      t.string :published_at

      t.timestamps null: false
    end
  end
end
