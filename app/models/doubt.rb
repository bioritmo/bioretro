class Doubt < ActiveRecord::Base
  belongs_to :team
  belongs_to :retrospective

  def improve_like
    increment!(:like)
  end

  def remove_like
    decrement!(:like)
  end

  def improve_dislike
    increment!(:dislike)
  end

  def remove_dislike
    decrement!(:dislike)
  end
end
