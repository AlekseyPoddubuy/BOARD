class CreateCountries < ActiveRecord::Migration[5.1]
  def change
    create_table :countries do |t|
      t.string :title
      t.string :body
      t.text :description
      t.string :slug

      t.timestamps
    end
    add_index :countries, :slug, unique: true
  end
end
