class CreatePlayersPlayerLists < ActiveRecord::Migration[5.0]
  def change
    create_table :players_player_lists do |t|
      t.references :player_list
      t.references :player
    end
  end
end
