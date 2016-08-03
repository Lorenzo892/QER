class AddColumnToPlayers < ActiveRecord::Migration[5.0]
  def change
    add_column :players, :nick_name, :string
    add_column :players, :category, :string
  end
end
