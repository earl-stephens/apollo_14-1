require 'rails_helper'

# As a visitor,
# When I visit '/astronauts'
# I see a list of astronauts with the following info:
# - Name
# - Age
# - Job
#
# (e.g. "Name: Neil Armstrong, Age: 37, Job: Commander")

describe "on the index page" do
  it "shows astro info" do
    astro1 = Astronaut.create(name: "Joe", age: 35, job: "janitor")
    astro2 = Astronaut.create(name: "Bob", age: 40, job: "cook")
    astro3 = Astronaut.create(name: "Pat", age: 45, job: "pilot")

    visit astronauts_path

    within ".astro#{astro1.id}" do
      expect(page).to have_content("Name: #{astro1.name}")
      expect(page).to have_content("Age: #{astro1.age}")
      expect(page).to have_content("Job: #{astro1.job}")
    end
    within ".astro#{astro2.id}" do
      expect(page).to have_content("Name: #{astro2.name}")
      expect(page).to have_content("Age: #{astro2.age}")
      expect(page).to have_content("Job: #{astro2.job}")
    end
    within ".astro#{astro3.id}" do
      expect(page).to have_content("Name: #{astro3.name}")
      expect(page).to have_content("Age: #{astro3.age}")
      expect(page).to have_content("Job: #{astro3.job}")
    end
  end
end
