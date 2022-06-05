class Questionnaire < ApplicationRecord

  validates :subject, presence: true
  validates :name, presence: true

  has_many :questions, dependent: :destroy

  has_many :records, dependent: :destroy
  has_many :users, :through => :records

  enum subject: [:math, :filipino, :english, :science, :abstract]

end