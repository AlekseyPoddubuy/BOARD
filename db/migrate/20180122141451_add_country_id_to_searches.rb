class AddCountryIdToSearches < ActiveRecord::Migration[5.1]
  def change
    add_column :searches, :country_id, :integer
  end
end
