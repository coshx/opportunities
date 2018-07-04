require 'rails_helper'

RSpec.describe Visit, type: :model do
  # Association: visit belongs to single patient
  it { should belong_to(:patient) }

  # Validation: must have date
  it { should validate_presence_of(:date) }
end
