class CreateTestCaseStepResults < ActiveRecord::Migration
  def change
    create_table :test_case_step_results do |t|
      t.string :title
      t.text :description
      t.integer :state
      t.integer :result
      t.integer :sort

      t.timestamps
    end
  end
end
