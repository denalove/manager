class AddEmployeeNumberAndFirstNameAndLastNameAndStreetAndCityAndStateAndZipAndHomePhoneAndCellPhoneAndHourlyRateToUsers < ActiveRecord::Migration
  def change
    add_column :users, :employee_number, :integer
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :street, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :zip, :integer
    add_column :users, :home_phone, :string
    add_column :users, :cell_phone, :string
    add_column :users, :hourly_rate, :float
  end
end
