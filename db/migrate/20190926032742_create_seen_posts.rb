class CreateSeenPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :seen_posts do |t|
      t.references :user, foreign_key: true
      t.references :micropost, foreign_key: true

      t.timestamps
    end
    add_index :seen_posts, [:user_id, :micropost_id], unique: true
  end
end
