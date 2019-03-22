class AstronautsController < ApplicationController
  def index
    # binding.pry
    @astros = Astronaut.all
  end
end
