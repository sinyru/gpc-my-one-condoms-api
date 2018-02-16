class CreateCustomerOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :customer_orders do |t|
      t.string :order_id, null: false
      t.string :customer, null: false
      t.float :cost, null: false
      t.boolean :repeat_customer, null: false
      t.string :date_created, null: false
      t.integer :total_visits, null: false

      t.timestamps
    end
  end
end
