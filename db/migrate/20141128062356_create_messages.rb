class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :title
      t.string :comment
      t.integer :user_id

      t.timestamps
    end
  end
end
