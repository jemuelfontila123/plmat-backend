class Choice < ApplicationRecord

  validates :text, presence: true
  belongs_to :question, optional: true

end