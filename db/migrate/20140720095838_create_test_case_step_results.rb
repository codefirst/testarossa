class CreateTestCaseStepResults < ActiveRecord::Migration
  def change
    create_table :test_case_step_results do |t|
      t.integer :test_result_id
      t.integer :test_case_step_id
      t.string :title
      t.text :description
      t.integer :state
      t.integer :result
      t.integer :sort

      t.timestamps
    end
  end
end
