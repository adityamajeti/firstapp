class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :gender
      t.string :qualification
      t.string :email
      t.text :mobino

      t.timestamps
    end
  end
end
