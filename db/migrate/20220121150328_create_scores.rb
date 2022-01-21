class CreateScores < ActiveRecord::Migration[6.1]
  def change
    create_table :scores do |t|
      t.belongs_to :check_in, null: false, foreign_key: true
      t.belongs_to :screener, null: false, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
