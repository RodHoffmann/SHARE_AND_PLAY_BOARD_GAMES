class AddAvailableToGames < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :available, :boolean, default: true
  end
end
