class CreatePageFourOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :page_four_orders do |t|

      t.timestamps
    end
  end
end
