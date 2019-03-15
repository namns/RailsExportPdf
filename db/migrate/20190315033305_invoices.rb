class Invoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.string :title
      t.text :description
      t.string :amount
      t.timestamps
    end
  end
end
