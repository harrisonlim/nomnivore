class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.text :message
    	t.string :rating

#added a field for each of the fields we want to keep track of (the message and the rating)
    	t.integer :user_id
    	t.integer :place_id

      t.timestamps
    end

#added some indexes to ensure our lookups between the different database tables are fast
    add_index :comments, [:user_id, :place_id]
    add_index :comments, :place_id
  end
end
