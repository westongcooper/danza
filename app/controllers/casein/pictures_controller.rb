# Scaffolding generated by Casein v5.1.1.5

module Casein
  class PicturesController < Casein::CaseinController

    ## optional filters for defining usage according to Casein::AdminUser access_levels
    # before_filter :needs_admin, :except => [:action1, :action2]
    # before_filter :needs_admin_or_current_user, :only => [:action1, :action2]

    def index
      @casein_page_title = 'Pictures'
      @pictures = Picture.order(sort_order(:pic)).paginate :page => params[:page]
    end

    def show
      @casein_page_title = 'View picture'
      @picture = Picture.find params[:id]
      @events = Event.all
    end

    def new
      @casein_page_title = 'Add a new picture'
      @picture = Picture.new
      @events = Event.all
    end

    def create
      @picture = Picture.new picture_params
      @picture.event_id = picture_event_id['id']
      @picture.pic = params[:picture][:pic]
      if !picture_params[:caption] || picture_params[:caption].empty?
        @picture.caption = ' '
      end
      # binding.pry
      if @picture.save
        flash[:notice] = 'Picture created'
        redirect_to casein_pictures_path
      else
        flash.now[:warning] = 'There were problems when trying to create a new picture'
        render :action => :new
      end
    end

    def update
      @casein_page_title = 'Update picture'
      @events = Event.all
      @picture = Picture.find params[:id]
      if picture_params[:caption] && picture_params[:caption].empty?
        @picture.caption = ' '
      end
      if @picture.update_attributes picture_params
        flash[:notice] = 'Picture has been updated'
        redirect_to casein_pictures_path
      else
        flash.now[:warning] = 'There were problems when trying to update this picture'
        render :action => :show
      end
    end

    def destroy
      @picture = Picture.find params[:id]

      @picture.destroy
      flash[:notice] = 'Picture has been deleted'
      redirect_to casein_pictures_path
    end

    private

      def picture_params
        params.require(:picture).permit(:pic, :caption)
      end
      def picture_event_id
        params.require(:event_id).permit(:id)
      end
  end
end
