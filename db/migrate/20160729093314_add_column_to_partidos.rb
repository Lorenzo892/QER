class AddColumnToPartidos < ActiveRecord::Migration[5.0]
  def change
    add_column :partidos, :rival, :string
    add_column :partidos, :fecha, :date
    add_column :partidos, :hora, :time
  end
end
