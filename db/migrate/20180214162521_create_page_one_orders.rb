class CreatePageOneOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :page_one_orders do |t|

      t.timestamps
    end
  end
end
