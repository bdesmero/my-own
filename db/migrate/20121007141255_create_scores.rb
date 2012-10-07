class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :right, :default => 0 
      t.integer :wrong, :default => 0

      t.timestamps
    end
  end
end
