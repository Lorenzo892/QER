class ChangeNamesToEnglish < ActiveRecord::Migration[5.0]
  def change
    def up
      rename_column :players, :nom, :name
      rename_column :players, :cognom1, :lastname1
      rename_column :players, :cognom2, :lastname2
      rename_column :players, :data_naixement, :birthdate
      rename_column :players, :posicio, :position
    end

    def down
      rename_column :players, :name, :nom
      rename_column :players, :lastname1, :cognom1
      rename_column :players, :lastname2, :cognom2
      rename_column :players, :birthdate, :data_naixement
      rename_column :players, :position, :posicio
    end
  end
end
