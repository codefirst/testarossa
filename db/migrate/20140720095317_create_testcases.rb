class CreateTestcases < ActiveRecord::Migration
  def change
    create_table :testcases do |t|
      t.integer :plan_id
      t.string :title
      t.text :description
      t.integer :sort
      t.timestamps
    end
    add_index :testcases, :plan_id
  end
end
