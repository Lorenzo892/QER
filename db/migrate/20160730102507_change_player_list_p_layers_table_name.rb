class ChangePlayerListPLayersTableName < ActiveRecord::Migration[5.0]
  def up
    rename_table :players_player_lists, :player_lists_players
  end

  def down
    rename_table :player_lists_players, :players_player_lists
  end
end
