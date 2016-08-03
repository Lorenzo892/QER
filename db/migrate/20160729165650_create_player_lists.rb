class CreatePlayerLists < ActiveRecord::Migration[5.0]
  def change
    create_table :player_lists do |t|
      t.references :partido, foreign_key: true

      t.timestamps
    end
  end
end
