class CreateGrapeWines < ActiveRecord::Migration[6.1]
  def change
    create_table :grape_wines do |t|
      t.references :wine, null: false, foreign_key: true
      t.references :grape, null: false, foreign_key: true
      t.integer :percentage

      t.timestamps
    end
  end
end
