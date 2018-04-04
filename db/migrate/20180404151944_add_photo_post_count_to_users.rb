class AddPhotoPostCountToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :photo_posts_count, :integer
  end
end
