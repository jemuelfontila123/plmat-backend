class AddQuestionsAndChoices < ActiveRecord::Migration[7.0]
  def change

    create_table :questionnaires do |q|
      q.integer :subject
      q.string :name
      q.timestamps
      q.integer :total_time
    end

    create_table :questions do |q|
      q.belongs_to :questionnaires
      q.string :text
      q.integer :difficulty
      q.string :subcategory
      q.timestamps
    end

    create_table :choices do |t|
      t.belongs_to :questions, foreign_key: true
      t.string :text
      t.boolean :correct_answer, default: false
      t.timestamps
    end

    add_reference :users, :questionnaire, foreign_key:true
  end
end
