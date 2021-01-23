class CreateEvaluationsSommeliersJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :evaluations, :sommeliers
  end
end
