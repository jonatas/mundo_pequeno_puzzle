class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.references :place
      t.references :friend

      t.timestamps
    end
    add_index :checkouts, :place_id
    add_index :checkouts, :friend_id
  end
end
