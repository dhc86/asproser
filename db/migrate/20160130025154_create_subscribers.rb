class CreateSubscribers < ActiveRecord::Migration
  def change
    create_table :subscribers do |t|
      t.string :name
      t.string :encrypted_email
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
