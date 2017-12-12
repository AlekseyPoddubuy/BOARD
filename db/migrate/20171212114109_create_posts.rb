class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.string :company
      t.string :email
      t.string :site
      t.string :type

      t.timestamps
    end
  end
end
