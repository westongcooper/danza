# Scaffolding generated by Casein v5.1.1.5

module Casein
  class EventsController < Casein::CaseinController

    ## optional filters for defining usage according to Casein::AdminUser access_levels
    # before_filter :needs_admin, :except => [:action1, :action2]
    # before_filter :needs_admin_or_current_user, :only => [:action1, :action2]

    def index
      @casein_page_title = 'Events'
  		@events = Event.order(sort_order(:name)).paginate :page => params[:page]
    end

    def show
      @casein_page_title = 'View event'
      @event = Event.find params[:id]
    end

    def new
      @casein_page_title = 'Add a new event'
    	@event = Event.new
    end

    def create
      @event = Event.new event_params
      @event.banner = params[:event][:banner]
      if @event.save
        flash[:notice] = 'Event created'
        # binding.pry
        redirect_to casein_events_path
      else
        flash.now[:warning] = 'There were problems when trying to create a new event'
        render :action => :new
      end
    end

    def update
      @casein_page_title = 'Update event'

      @event = Event.find params[:id]

      if @event.update_attributes event_params
        flash[:notice] = 'Event has been updated'
        redirect_to casein_events_path
      else
        flash.now[:warning] = 'There were problems when trying to update this event'
        render :action => :show
      end
    end

    def destroy
      @event = Event.find params[:id]

      @event.destroy
      flash[:notice] = 'Event has been deleted'
      redirect_to casein_events_path
    end

    private

      def event_params
        params.require(:event).permit(:name, :address, :date, :endDate, :pdf, :complete, :description, :banner,
                                      :avatar, :city, :color)
      end

  end
end
