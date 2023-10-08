class AddPurchaseddToBikes < ActiveRecord::Migration[7.0]
  def change
    add_column :bikes, :purchased, :boolean, default: false
  end
end
