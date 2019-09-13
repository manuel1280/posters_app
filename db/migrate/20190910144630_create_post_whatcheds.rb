class CreatePostWhatcheds < ActiveRecord::Migration[5.2]
  def change
    create_table :post_whatcheds do |t|
      t.string :add
      t.integer :user_id
      t.integer :micropost_id

      t.timestamps
    end
  end
end
