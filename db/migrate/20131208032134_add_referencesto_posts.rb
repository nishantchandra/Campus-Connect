class AddReferencestoPosts < ActiveRecord::Migration
  def change
    change_table :posts do |t|
      t.references :college
    end
  end
end
