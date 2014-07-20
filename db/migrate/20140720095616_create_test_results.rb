class CreateTestResults < ActiveRecord::Migration
  def change
    create_table :test_results do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
