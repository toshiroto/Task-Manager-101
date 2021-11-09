class DeleteRatingFromTasks < ActiveRecord::Migration[6.0]
  def change
    remove_column :tasks, :rating
  end
end
