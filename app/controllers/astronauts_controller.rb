class AstronautsController < ApplicationController
  def index
    # binding.pry
    @astros = Astronaut.all
    @avg_age = Astronaut.average_age
    # binding.pry
  end
end
