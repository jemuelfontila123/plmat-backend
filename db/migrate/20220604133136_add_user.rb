class AddUser < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |u|
      u.integer :role
      u.string :email
      u.string :password_digest
      u.string :first_name
      u.string :last_name
      u.string :middle_name
      u.string :contact_number
      u.integer :current_exam, default: 0
      u.boolean :finished_exam, default: false
      u.boolean :watched_demo, default: false
      u.timestamps
    end
    create_table :exam_results do |e|
      e.integer :math_score, default: 0
      e.integer :science_score, default: 0
      e.integer :english_score, default: 0
      e.integer :filipino_score, default: 0
      e.integer :abstract_score, default: 0
    end

    add_reference :exam_results, :user, foreign_key: true
  end
end
