class AddRankingToEndorsements < ActiveRecord::Migration
  def change
    add_column :endorsements, :ranking, :integer
  end
end
