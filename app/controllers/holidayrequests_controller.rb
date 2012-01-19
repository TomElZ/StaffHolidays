class HolidayrequestsController < ApplicationController
  
  def index
    @holidayrequests = Holidayrequests.all
  end

  def show
    @holidayrequests = Holidayrequests.find(params[:id])
  end

  def new
    @holidayrequests = Holidayrequests.new
  end

  def edit
    @holidayrequests = Holidayrequests.find(params[:id])
  end
  
  def create  
    @holidayrequests = Holidayrequests.create(params[:holidayrequests])
    if @holidayrequests.save
    flash[:notice] = "Holiday Request Submitted!"
    else
    flash[:notice] = "Invalid Holiday Request"
    end 
    redirect_to :action => "index"
    end
  
  def update
    @holidayrequests = Holidayrequests.find(params[:id])
    @holidayrequests.update_attributes(params[:holidayrequests])
    flash[:notice] = "Holiday Request updated!"
    redirect_to @holidayrequests
    end
  
  def destroy
    @holidayrequests = Holidayrequests.find(params[:id])
    @holidayrequests.destroy
    redirect_to :action => "index"
end


end
