class Record < ApplicationRecord
  belongs_to :questionnaire
  belongs_to :user
end