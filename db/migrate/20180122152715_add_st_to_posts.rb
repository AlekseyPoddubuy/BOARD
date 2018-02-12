class AddStToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :st, :string
  end
end
