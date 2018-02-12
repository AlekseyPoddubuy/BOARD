class AddThemeIdToTopics < ActiveRecord::Migration[5.1]
  def change
    add_column :topics, :theme_id, :integer
  end
end
