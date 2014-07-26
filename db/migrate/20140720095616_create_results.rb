class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :plan_id
      t.string :title
      t.text :description
      t.timestamps
    end
  end
end
