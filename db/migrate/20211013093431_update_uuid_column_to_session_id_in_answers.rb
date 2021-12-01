class UpdateUuidColumnToSessionIdInAnswers < ActiveRecord::Migration[6.1]
  def change
    rename_column :answers, :uuid, :session_id
  end
end
