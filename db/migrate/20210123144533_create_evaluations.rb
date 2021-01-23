class CreateEvaluations < ActiveRecord::Migration[6.1]
  def change
    create_table :evaluations do |t|
      t.belongs_to :wine, null: false, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
