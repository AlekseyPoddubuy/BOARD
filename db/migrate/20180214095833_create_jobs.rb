class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :slug

      t.timestamps
    end
    add_index :jobs, :slug, unique: true
  end
end
