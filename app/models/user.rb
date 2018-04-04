class User < ApplicationRecord
  # Direct associations

  has_many   :requests_received,
             :class_name => "FriendRequest",
             :foreign_key => "receipient_id",
             :dependent => :destroy

  has_many   :sent_requests,
             :class_name => "FriendRequest",
             :foreign_key => "sender_id",
             :dependent => :destroy

  has_many   :comments,
             :dependent => :destroy

  has_many   :likes,
             :dependent => :destroy

  has_many   :photo_posts,
             :class_name => "Photo",
             :dependent => :destroy

  # Indirect associations

  has_many   :followers,
             :through => :requests_received,
             :source => :sender

  has_many   :influencers,
             :through => :sent_requests,
             :source => :receipient

  has_many   :liked_photos,
             :through => :likes,
             :source => :photo

  # Validations

  validates :username, :uniqueness => true

  validates :username, :presence => true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
