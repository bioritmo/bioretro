class Topic < ActiveRecord::Base
  belongs_to :team
  belongs_to :retrospective

  def improve_like
    self.increment!(:like)
  end

  def remove_like
    self.decrement!(:like)
  end

  def improve_dislike
    self.increment!(:dislike)
  end

  def remove_dislike
    self.decrement!(:dislike)
  end
end
