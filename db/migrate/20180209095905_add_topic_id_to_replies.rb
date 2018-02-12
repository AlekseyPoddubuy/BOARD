class AddTopicIdToReplies < ActiveRecord::Migration[5.1]
  def change
    add_column :replies, :topic_id, :integer
  end
end
