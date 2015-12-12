class AddReplyIdToAttachment < ActiveRecord::Migration
  def change
    add_column :attachments, :reply_id, :integer
  end
end
