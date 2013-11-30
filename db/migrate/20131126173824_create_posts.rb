class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.string :university

      t.timestamps
    end
     add_index :posts, [:created_at]
  end
end
