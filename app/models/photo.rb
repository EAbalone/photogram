class Photo < ApplicationRecord
  # Direct associations

  has_many   :comments,
             :dependent => :destroy

  has_many   :likes,
             :dependent => :destroy

  belongs_to :uploader,
             :class_name => "User",
             :foreign_key => "user_id",
             :counter_cache => :photo_posts_count

  # Indirect associations

  # Validations

  validates :image, :presence => true

end
