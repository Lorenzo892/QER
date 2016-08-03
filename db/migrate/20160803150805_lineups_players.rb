class LineupsPlayers < ActiveRecord::Migration[5.0]
  def change
      create_table :lineups_players do |t|
        t.references :lineup
        t.references :player
      end
  end
end
