class Tweet < ApplicationRecord
  validates :tweet, presence: true, length: {minimum: 1, maximum: 140}, allow_blank: false
  validates :link, presence: true
  validates :user_name, presence: true

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
