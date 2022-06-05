class Questionnaire < ApplicationRecord

  validates :subject, presence: true
  validates :name, presence: true

  has_many :questions
  has_many :users

  enum subject: [:math, :filipino, :english, :science, :abstract]

end