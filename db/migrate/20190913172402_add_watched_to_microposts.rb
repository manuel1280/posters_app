class AddWatchedToMicroposts < ActiveRecord::Migration[5.2]
  def change
    add_column :microposts, :watched, :boolean, default: false
  end
end
