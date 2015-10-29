class RemoveTimeOutBreakAndTimeInBreakFromTimeclocks < ActiveRecord::Migration
  def change
    remove_column :timeclocks, :time_out_break, :time
    remove_column :timeclocks, :time_in_break, :time
  end
end
