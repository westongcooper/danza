class DanzaController < ApplicationController
before_action :set_event, only: [:scores, :schedule, :pictures, :landing]

  def about
    @faculty = Faculty.all
  end

  def schedule
  end

  def scores
    @finishedEvent = Event.where('date < ?', Time.now.beginning_of_day).order("date DESC")
  end

  def pictures
  end
  def landing

  end
  def registration

  end
  private

  def set_event
    @events = Event.where('date >= ?', Time.now.beginning_of_day).order("date")
  end
end
