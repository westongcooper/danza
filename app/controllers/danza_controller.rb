class DanzaController < ApplicationController
  def about
    @faculty = Faculty.all
  end
  def schedule
    @events = Event.all
  end
  def scores
    @events = Event.all
  end
  def pictures
    @events = Event.all
  end
end
