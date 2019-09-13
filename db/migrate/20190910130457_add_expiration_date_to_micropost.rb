class AddExpirationDateToMicropost < ActiveRecord::Migration[5.2]
  def change
    add_column :microposts, :expiration_date, :datetime
  end
end
