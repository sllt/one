class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.string :content
      t.integer :user_id
      t.integer :topic_id

      t.timestamps null: false
    end
  end
end
