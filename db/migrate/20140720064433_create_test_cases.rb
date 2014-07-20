class CreateTestCases < ActiveRecord::Migration
  def change
    create_table :test_cases do |t|
      t.integer :project_id
      t.string :title
      t.text :description
      t.timestamps
    end
  end
end
