class CreateTraces < ActiveRecord::Migration
  def change
    create_table :traces do |t|
      t.integer :result_id
      t.integer :testcase_id
      t.string :title
      t.text :description
      t.integer :state
      t.integer :judgement
      t.integer :sort

      t.timestamps
    end
    add_index :traces, :result_id
    add_index :traces, :testcase_id
  end
end
