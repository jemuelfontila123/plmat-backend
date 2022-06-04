class Choice < ApplicationRecord

  validates :text, presence: true
  belongs_to :question

end