class DanzaController < ApplicationController
before_action :set_event, :set_rules
before_action :set_finished_events, only: [:scores, :pictures, :landing]


  def about
    @faculty = Faculty.where("contact = false")
  end

  def contact
    @facultyContact =  Faculty.where("contact = true")
    @contactAddress = "17870 SW 4th Court Pembroke Pines, FL 33029"
  end

  def schedule
  end

  def scores
  end

  def pictures
    @pictures = Picture.where(event_id: params[:event_id])
    @i = 0
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
    # @pdf = Rule.all.take
    @pdf = Rule.where("intensive = true").take

    @pdfIntensive = Rule.where("intensive = false").take
  end
end
