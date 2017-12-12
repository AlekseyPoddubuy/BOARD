class CreateAgencies < ActiveRecord::Migration[5.1]
  def change
    create_table :agencies do |t|
      t.string :title
      t.text :description
      t.string :body
      t.string :rating
      t.datetime :datetime

      t.timestamps
    end
  end
end
