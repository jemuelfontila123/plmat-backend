class User < ApplicationRecord

  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, length: { minimum: 8 }

  has_many :records, dependent: :destroy
  has_many :questionnaires, :through => :records


  enum role: [:admin, :test_taker]
end