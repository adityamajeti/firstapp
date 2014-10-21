class CreateAddrs < ActiveRecord::Migration
  def change
    create_table :addrs do |t|
      t.integer :user_id
      t.text :permenant_address
      t.text :current_address

      t.timestamps
    end
  end
end
