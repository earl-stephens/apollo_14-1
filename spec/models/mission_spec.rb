require 'rails_helper'

describe Mission, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :time_in_space }
  end

  describe 'Relationships' do
    it { should have_many :astronaut_missions}
    it { should have_many :astronauts}
  end

  describe 'class methods' do
    it '.listing' do
      mission1 = Mission.create!(title: "Moon", time_in_space: 12)
      mission2 = Mission.create(title: "Jupiter", time_in_space: 13)
      mission3 = Mission.create(title: "Saturn", time_in_space: 14)

      expect(Mission.listing).to eq(["Jupiter", "Moon", "Saturn"])
    end
  end
end
