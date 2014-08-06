class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.column :name, :string, :null => false
      t.column :email, :string
      t.timestamps
    end
  end
end
