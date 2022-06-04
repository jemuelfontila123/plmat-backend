class AddUser < ActiveRecord::Migration[7.0]
  def change
    create_table :exam_results do |e|
      e.integer :math_score
      e.integer :science_score
      e.integer :english_score
      e.integer :filipino_score
      e.integer :abstract_score
    end

    create_table :users do |u|
      u.belongs_to :exam_results
      u.string :email
      u.string :password_digest
      u.string :first_name
      u.string :last_name
      u.string :middle_name
      u.integer :current_exam
      u.boolean :finished_exam
      u.timestamps
    end
  end
end
