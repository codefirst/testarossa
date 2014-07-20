class CreateTestCaseSteps < ActiveRecord::Migration
  def change
    create_table :test_case_steps do |t|
      t.integer :test_case_id
      t.string :title
      t.text :description
      t.integer :sort
      t.timestamps
    end
  end
end
