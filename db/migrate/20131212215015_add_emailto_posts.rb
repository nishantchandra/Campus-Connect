class AddEmailtoPosts < ActiveRecord::Migration
  def change
    change_table :posts do |t|
      t.string :email
    end
  end
end
