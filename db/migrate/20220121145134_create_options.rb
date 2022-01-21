class CreateOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :options do |t|
      t.string :name
      t.json :answers
      t.belongs_to :screener, null: false, foreign_key: true

      t.timestamps
    end
  end
end
