class AddPaymentToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :payment, :string
  end
end
