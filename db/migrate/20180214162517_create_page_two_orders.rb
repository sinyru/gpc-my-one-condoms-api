class CreatePageTwoOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :page_two_orders do |t|

      t.timestamps
    end
  end
end
