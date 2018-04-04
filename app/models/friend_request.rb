class FriendRequest < ApplicationRecord
  # Direct associations

  belongs_to :receipient,
             :class_name => "User",
             :counter_cache => :requests_received_count

  belongs_to :sender,
             :class_name => "User",
             :counter_cache => :sent_requests_count

  # Indirect associations

  # Validations

end
