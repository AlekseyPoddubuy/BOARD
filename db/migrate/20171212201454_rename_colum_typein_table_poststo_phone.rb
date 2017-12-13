class RenameColumTypeinTablePoststoPhone < ActiveRecord::Migration[5.1]
  def change
  	  rename_column :posts, :type, :phone
  end
end
