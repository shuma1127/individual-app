class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :where
      t.string :word
      t.string :title
      t.string :review
      t.string :image
      t.timestamps
    end
  end
end
