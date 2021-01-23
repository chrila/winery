class CreateSommeliers < ActiveRecord::Migration[6.1]
  def change
    create_table :sommeliers do |t|
      t.string :name
      t.integer :age
      t.string :nationality

      t.timestamps
    end
  end
end
