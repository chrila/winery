class CreateEvaluationSommeliers < ActiveRecord::Migration[6.1]
  def change
    create_table :evaluation_sommeliers do |t|
      t.belongs_to :evaluation, null: false, foreign_key: true
      t.belongs_to :sommelier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
