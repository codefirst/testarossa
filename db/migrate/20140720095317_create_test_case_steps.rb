class CreateTestCaseSteps < ActiveRecord::Migration
  def change
    create_table :test_case_steps do |t|
      t.string :title
      t.text :description
      t.integer :sort

      t.timestamps
    end
  end
end
