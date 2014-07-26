class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.integer :project_id
      t.string :title
      t.text :description
      t.timestamps
    end
    add_index :plans, :project_id
  end
end
