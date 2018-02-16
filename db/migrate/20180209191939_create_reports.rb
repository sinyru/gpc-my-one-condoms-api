class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.float :revenue, null: false
      t.string :dates, null: false
      t.integer :repeat_customers, null: false
      t.integer :total_visits, null: false
      t.integer :total_orders, null: false
      t.float :average_order_value, null: false
      t.float :conversion_rate, null: false
      t.integer :new_customers, null: false
      t.integer :samples, null: false
      t.integer :six_packs, null: false
      t.integer :twelve_packs, null: false
      t.integer :twenty_four_packs, null: false
      t.integer :mobiles, null: false
      t.integer :desktops, null: false
      t.integer :tablets, null: false
      t.integer :nps, null: false

      t.timestamps
    end
  end
end
