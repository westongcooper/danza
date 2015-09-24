class DanzaController < ApplicationController
before_action :set_event, :set_rules
before_action :set_finished_events, only: [:scores, :pictures, :landing]


  def about
    @faculty = Faculty.all
  end

  def schedule
  end

  def scores
  end

  def pictures
    @pictures = Picture.where(event_id: params[:event_id])
  end

  def landing
  end

  def registration
  end

  def rules
  end

  private

  def set_event
    @events = Event.where("complete = false").order("date")
  end

  def set_finished_events
    @finishedEvent = Event.where("complete = true").order("date DESC")
  end
  def set_rules
    @pdf = Rule.all.take
  end
end
