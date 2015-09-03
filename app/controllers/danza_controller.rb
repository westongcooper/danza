class DanzaController < ApplicationController
  def about
    @faculty = Faculty.all
    # @faculty = DanzaDecorator.new(faculty)
  end
  def schedule
    @events = Event.all
  end
  def pictures
    @events = Event.all
  end
end
