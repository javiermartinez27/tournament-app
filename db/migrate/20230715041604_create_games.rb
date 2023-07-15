class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games, id: :uuid do |t|
      t.string :name
      t.string :release_year

      t.timestamps
    end
  end
end
