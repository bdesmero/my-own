class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.date :published_date
      t.string :type
      t.timestamps
    end
  end
end
