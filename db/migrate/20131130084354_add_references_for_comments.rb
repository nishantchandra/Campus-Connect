class AddReferencesForComments < ActiveRecord::Migration
  def change
    change_table :comments do |t|
      t.references :posts
    end
  end
end
