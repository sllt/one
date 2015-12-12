class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string :src
      t.string :type
      t.integer :user_id
      t.integer :topic_id

      t.timestamps null: false
    end
  end
end
