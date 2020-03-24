class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :place
      t.string :word
      t.string :title
      t.string :genre
      t.string :review
      t.string :image
      t.timestamps
    end
  end
end
