class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.column :name, :string, :null => false
      t.timestamps
    end
  end
end
