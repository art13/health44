class CreateLetters < ActiveRecord::Migration
  def change
    create_table :letters do |t|
      t.string :sender_name
      t.string :sender_age
      t.string :sender_email
      t.string :body, null: false
      
      t.timestamps
    end
  end
end
