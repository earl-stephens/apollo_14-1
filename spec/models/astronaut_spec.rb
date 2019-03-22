require 'rails_helper'

describe Astronaut, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :age }
    it { should validate_presence_of :job }
  end

  describe 'Relationships' do
    it { should have_many :astronaut_missions}
    it { should have_many :missions}
  end

  describe 'class methods' do
    it '#average_age' do
      astro1 = Astronaut.create(name: "Joe", age: 35, job: "janitor")
      astro2 = Astronaut.create(name: "Bob", age: 40, job: "cook")
      astro3 = Astronaut.create(name: "Pat", age: 45, job: "pilot")

      expect(Astronaut.average_age).to eq(40)
    end
  end
end
