class Notification < ApplicationRecord
  belongs_to :user
  belongs_to :game
  belongs_to :owner, class_name: 'User', foreign_key: 'owner_id'
end
