class AddFieldsToPlayers < ActiveRecord::Migration[5.0]
  def change
    add_column :players, :nom, :string
    add_column :players, :cognom1, :string
    add_column :players, :cognom2, :string
    add_column :players, :posicio, :integer
    add_column :players, :data_naixement, :date
  end
end
