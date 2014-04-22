class QuesController < ApplicationController
  # def index
  #   # GET
  #   # List of data
  #   # Replaced by our home index CURRENTLY
  # end

  def show
    # GET
    # Shows an individual object
    @que = Que.find params[:id]
  end

  def new
    # GET
    # Brings you to the new page
    @que = Que.new
  end

  def create
    # POST
    # Creates the data
    @que = Que.create que_params
    redirect_to root_path
  end

  def edit
    # GET
    # Brings you to the edit page
    @que = Que.find params[:id]
  end

  def update
    # PUT/PATCH
    # Updates existing data
    @que = Que.find params[:id]
    @que.update_attributes que_params
    redirect_to root_path
  end

  def destroy
    # DELETE
    # Deletes stuff
    @que = Que.find params[:id]
    @que.delete
    redirect_to root_path
  end


  private
    def que_params
      params.require(:que).permit(:name)
    end
end
