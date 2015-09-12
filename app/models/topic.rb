class Topic < ActiveRecord::Base
  has_many :votes, dependent: :destroy

  def upvote
    votes.create
  end

  def downvote
    votes.last.destroy unless votes.empty?
  end

end
