class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.column :name, :string, :null => false
      t.column :mid, :integer
      t.timestamps
    end
  end
end