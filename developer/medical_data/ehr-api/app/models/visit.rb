class Visit < ApplicationRecord
  belongs_to :patient
  validates_presence_of :date
end
