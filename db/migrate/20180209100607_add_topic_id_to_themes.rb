class AddTopicIdToThemes < ActiveRecord::Migration[5.1]
  def change
    add_column :themes, :topic_id, :integer
  end
end
