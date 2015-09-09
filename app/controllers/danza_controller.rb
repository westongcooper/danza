class DanzaController < ApplicationController
before_action :set_event, only: [:scores, :schedule, :pictures]

  def about
    @faculty = Faculty.all
  end

  def schedule
  end

  def scores
  end

  def pictures
  end

  private

  def set_event
    @events = Event.all
  end
end
