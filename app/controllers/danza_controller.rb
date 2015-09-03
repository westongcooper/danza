class DanzaController < ApplicationController
  def about
    @faculty = Faculty.all
    # binding.pry
  end
  def schedule
    @events = Event.all
  end
  def pictures
    @events = Event.all
  end
end
