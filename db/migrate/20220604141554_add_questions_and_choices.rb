class AddQuestionsAndChoices < ActiveRecord::Migration[7.0]
  def change

    create_table :questionnaires do |q|
      q.integer :subject
      q.string :name
      q.timestamps
      q.integer :total_time
    end

    create_table :questions do |q|
      q.string :text
      q.integer :difficulty
      q.string :subcategory
      q.timestamps
    end

    create_table :choices do |t|
      t.string :text
      t.boolean :correct_answer, default: false
      t.timestamps
    end

    create_table :records do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :questionnaire, foreign_key: true
      t.timestamps
    end

    add_reference :questions, :questionnaire, foreign_key: true
    add_reference :choices, :question, foreign_key: true
  end
end
