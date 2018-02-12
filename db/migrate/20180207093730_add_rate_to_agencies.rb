class AddRateToAgencies < ActiveRecord::Migration[5.1]
  def change
    add_column :agencies, :rate, :integer
  end
end
