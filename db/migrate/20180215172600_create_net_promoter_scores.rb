class CreateNetPromoterScores < ActiveRecord::Migration[5.0]
  def change
    create_table :net_promoter_scores do |t|
      t.string :date_created, null: false
      t.integer :score, null: false
      t.string :feedback, null: false

      t.timestamps
    end
  end
end
