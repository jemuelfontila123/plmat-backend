class Questionnaire < ApplicationRecord

  validates :subject, presence: true
  validates :name, presence: true

  has_many :questions

  enum subject: [:math, :filipino, :english, :science, :abstract]

end