class CreateJournalSommeliers < ActiveRecord::Migration[6.1]
  def change
    create_table :journal_sommeliers do |t|
      t.belongs_to :sommelier, null: false, foreign_key: true
      t.string :journal
      t.integer :role

      t.timestamps
    end
  end
end
