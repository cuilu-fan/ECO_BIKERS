class AddOrderedToCarts < ActiveRecord::Migration[7.0]
  def change
    add_column :carts, :ordered, :boolean, default: false, not_null: true
  end
end
