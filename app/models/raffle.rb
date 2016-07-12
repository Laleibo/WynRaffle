class Raffle < ApplicationRecord
  has_many :tickets
  has_many :users, through: :tickets

  belongs_to :winner, class_name: "User", foreign_key: "user_id", required: false
end
