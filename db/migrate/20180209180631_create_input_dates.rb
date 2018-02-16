class CreateInputDates < ActiveRecord::Migration[5.0]
  def change
    create_table :input_dates do |t|
      t.string :start_date, null: false

      t.timestamps
    end
  end
end
