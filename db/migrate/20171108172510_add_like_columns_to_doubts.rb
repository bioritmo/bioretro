class AddLikeColumnsToDoubts < ActiveRecord::Migration[5.0]
  def change
    add_column :doubts, :like, :integer, default: 0
    add_column :doubts, :dislike, :integer, default: 0
  end
end
