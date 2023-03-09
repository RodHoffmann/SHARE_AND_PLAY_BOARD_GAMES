class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :name
      t.string :category
      t.text :description
      t.integer :number_players
      t.integer :day_price
      t.integer :average_duration
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
