class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :term
      t.string :translation
      t.string :example
      t.string :example_translation
      t.references :category

      t.timestamps
    end
  end
end
