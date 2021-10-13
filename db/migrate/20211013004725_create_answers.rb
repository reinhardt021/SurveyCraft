class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.belongs_to :question
      t.string :uuid
      t.string :answer
      t.timestamps
    end
  end
end
