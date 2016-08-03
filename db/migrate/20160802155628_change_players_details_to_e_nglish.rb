class ChangePlayersDetailsToENglish < ActiveRecord::Migration[5.0]
  def change
    rename_column :players, :nom, :name
    rename_column :players, :cognom1, :lastname1
    rename_column :players, :cognom2, :lastname2
    rename_column :players, :data_naixement, :birthdate
    rename_column :players, :posicio, :position
  end
end
