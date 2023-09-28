class CreateBikes < ActiveRecord::Migration[7.0]
  def change
    create_table :bikes do |t|
      t.string :brand
      t.string :color
      t.string :size
      t.string :condition
      t.integer :age
      t.integer :refurbed_year
      t.float :price
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
