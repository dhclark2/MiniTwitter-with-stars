class Tweet < ApplicationRecord
  validates :tweet, presence: true, length: {minimum: 1, maximum: 140}, allow_blank: false
  validates :link, presence: true
  validates :user_name, presence: true
end
