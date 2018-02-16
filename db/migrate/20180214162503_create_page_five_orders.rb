class CreatePageFiveOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :page_five_orders do |t|

      t.timestamps
    end
  end
end
