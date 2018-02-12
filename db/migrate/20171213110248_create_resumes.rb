class CreateResumes < ActiveRecord::Migration[5.1]
  def change
    create_table :resumes do |t|
      t.string :title
      t.string :position
      t.string :city
      t.datetime :datetime
      t.text :skills
      t.text :description

      t.timestamps
    end
  end
end
