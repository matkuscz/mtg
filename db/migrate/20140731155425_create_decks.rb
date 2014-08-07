class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.column :name, :string, :null => false

      #this line add column 'player_id'
      t.references :player, index: true

      t.timestamps
    end
  end
end
