class CreatePurchases < ActiveRecord::Migration[5.0]
  def change
    create_table :purchases do |t|
      t.belongs_to :album, index: true
      t.belongs_to :cart,  index: true
      t.integer    :quantity
      t.timestamps
    end
  end
end
