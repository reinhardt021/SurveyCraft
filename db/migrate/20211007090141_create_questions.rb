class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.belongs_to :survey
      t.string :question
      t.timestamps
    end
  end
end
