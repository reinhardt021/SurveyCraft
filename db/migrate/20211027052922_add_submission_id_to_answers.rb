class AddSubmissionIdToAnswers < ActiveRecord::Migration[6.1]
  def change
    add_column :answers, :submission_id, :integer
  end
end
