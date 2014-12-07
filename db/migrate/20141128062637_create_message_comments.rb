class CreateMessageComments < ActiveRecord::Migration
  def change
    create_table :message_comments do |t|
      t.string :comment
      t.integer :message_id
      t.integer :user_id

      t.timestamps
    end
  end
end
