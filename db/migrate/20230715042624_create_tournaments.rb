class CreateTournaments < ActiveRecord::Migration[7.0]
  def change
    create_table :tournaments, id: :uuid do |t|
      t.string :format
      t.references :game, type: :uuid, null: false, foreign_key: true
      t.json :position
      t.references :user, type: :uuid, null: false, foreign_key: true
      t.string :players, array: true, default: []

      t.timestamps
    end
  end
end
