class DanzaController < ApplicationController
before_action :set_event, only: [:schedule, :pictures, :landing]

  def about
    @faculty = Faculty.all
  end

  def schedule
  end

  def scores
    @events = Event.all.order("date DESC")
  end

  def pictures
  end
  def landing

  end
  def registration

  end
  private

  def set_event
    @events = Event.all.order("date")
  end
end
