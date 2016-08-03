class ChangeGameDetailsToENglish < ActiveRecord::Migration[5.0]
  def change
    rename_column :partidos, :rival, :opponent
  rename_column :partidos, :fecha, :date
  rename_column :partidos, :hora, :time
  end
end
