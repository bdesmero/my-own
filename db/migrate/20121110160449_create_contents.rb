class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.text :phrase
      t.text :translation
      t.text :description
      t.references :lesson

      t.timestamps
    end
    add_index :contents, :lesson_id
  end
end
