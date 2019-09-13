class AddTimePostedToMicropost < ActiveRecord::Migration[5.2]
  def change
    add_column :microposts, :time_posted, :integer
  end
end
