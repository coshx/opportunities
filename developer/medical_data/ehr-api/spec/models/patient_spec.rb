require 'rails_helper'

RSpec.describe Patient, type: :model do
  # Association: 1:m relationship with visits
  it { should have_many(:visits).dependent(:destroy) }

  # Validation: following columns required before saving
  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
  it { should validate_presence_of(:dob) }
end
