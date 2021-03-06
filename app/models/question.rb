class Question < ApplicationRecord

  belongs_to :questionnaire, optional: true

  validates :text, presence: true
  validates :difficulty, presence: true
  validates :subcategory, presence: true

  enum difficulty: [:easy, :medium, :hard]


end