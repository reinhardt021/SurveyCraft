class RemoveSessionIdFromAnswers < ActiveRecord::Migration[6.1]
  def change
    remove_column :answers, :session_id
  end
end
