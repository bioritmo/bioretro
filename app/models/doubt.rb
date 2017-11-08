class Doubt < ActiveRecord::Base
  belongs_to :team
  belongs_to :retrospective

  def improve_like
    increment!(:like)
  end

  def improve_dislike
    increment!(:dislike)
  end
end
