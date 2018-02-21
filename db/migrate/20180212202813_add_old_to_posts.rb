class AddOldToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :old, :integer
  end
end
