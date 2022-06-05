class AddUser < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |u|
      u.integer :role
      u.string :email
      u.string :password_digest
      u.string :first_name
      u.string :last_name
      u.string :middle_name
      u.integer :current_exam
      u.boolean :finished_exam
      u.timestamps
    end
    create_table :exam_results do |e|
      e.belongs_to :users
      e.integer :math_score, default: 0
      e.integer :science_score, default: 0
      e.integer :english_score, default: 0
      e.integer :filipino_score, default: 0
      e.integer :abstract_score, default: 0
    end
  end
end
