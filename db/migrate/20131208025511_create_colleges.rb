class CreateColleges < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
       t.string :campus
       t.timestamps
    end
  end
end
