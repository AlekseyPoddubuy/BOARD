class CreateTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :types do |t|
      t.string :title
      t.string :body
      t.string :slug

      t.timestamps
    end
    add_index :types, :slug, unique: true
  end
end
