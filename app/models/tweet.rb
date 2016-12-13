class Tweet < ApplicationRecord
  has_many :votes

  validates :tweet, presence: true, length: {minimum: 1, maximum: 140}, allow_blank: false
  validates :link, presence: true
  validates :user_name, presence: true

  def starvote_count
    votes.where(starvote: true).count
  end

  def upvote_count
    votes.where(upvote: true).count
  end

  def downvote_count
    votes.where(upvote: false).count
  end

  def net_vote
    (upvote_count - downvote_count)
  end
end
