# Scaffolding generated by Casein v5.1.1.5

module Casein
  class FacultiesController < Casein::CaseinController
  
    ## optional filters for defining usage according to Casein::AdminUser access_levels
    # before_filter :needs_admin, :except => [:action1, :action2]
    # before_filter :needs_admin_or_current_user, :only => [:action1, :action2]
  
    def index
      @casein_page_title = 'Faculties'
  		@faculties = Faculty.order(sort_order(:full_name)).paginate :page => params[:page]
    end
  
    def show
      @casein_page_title = 'View faculty'
      @faculty = Faculty.find params[:id]
    end
  
    def new
      @casein_page_title = 'Add a new faculty'
    	@faculty = Faculty.new
    end

    def create
      @faculty = Faculty.new faculty_params
      if @faculty.save
        flash[:notice] = 'Faculty created'
        redirect_to casein_faculties_path
      else
        flash.now[:warning] = 'There were problems when trying to create a new faculty'
        render :action => :new
      end
    end
  
    def update
      @casein_page_title = 'Update faculty'
      
      @faculty = Faculty.find params[:id]
    
      if @faculty.update_attributes faculty_params
        flash[:notice] = 'Faculty has been updated'
        redirect_to casein_faculties_path
      else
        flash.now[:warning] = 'There were problems when trying to update this faculty'
        render :action => :show
      end
    end
 
    def destroy
      @faculty = Faculty.find params[:id]

      @faculty.destroy
      flash[:notice] = 'Faculty has been deleted'
      redirect_to casein_faculties_path
    end
  
    private
      
      def faculty_params
        params.require(:faculty).permit(:full_name, :bio, :avatar)
      end

  end
end