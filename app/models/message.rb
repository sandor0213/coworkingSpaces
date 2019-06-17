class Message < ApplicationRecord
   validates :body, presence: true
   validates :from_user_id, presence: true
   validates :to_user_id, presence: true
   belongs_to :user
end
