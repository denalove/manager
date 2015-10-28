class CreateTimeclocks < ActiveRecord::Migration
  def change
    create_table :timeclocks do |t|
      t.date :date
      t.time :time_in
      t.time :time_out_break
      t.time :time_in_break
      t.time :time_out_lunch
      t.time :time_in_lunch
      t.time :time_out
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
