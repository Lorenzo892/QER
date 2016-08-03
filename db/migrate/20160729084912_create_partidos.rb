class CreatePartidos < ActiveRecord::Migration[5.0]
  def change
    create_table :partidos do |t|

      t.timestamps
    end
  end
end
