class HolidayrequestsController < ApplicationController
  
  def index
    login_required
    @holidayrequests = Holidayrequests.all
  end

  def show
    login_required
    @holidayrequests = Holidayrequests.find(params[:id])
  end

  def new
    login_required
    @holidayrequests = Holidayrequests.new
  end

  def edit
    login_required
    @holidayrequests = Holidayrequests.find(params[:id])
  end
  
  def create  
    login_required
    @holidayrequests = Holidayrequests.create(params[:holidayrequests])
    @holidayrequests.user_id = current_user.id
    if @holidayrequests.save
    flash[:notice] = "Holiday Request Submitted!"
    else
    flash[:notice] = "Invalid Holiday Request"
    end 
    redirect_to :action => "index"
    end
  
  def update
    login_required
    @holidayrequests = Holidayrequests.find(params[:id])
    @holidayrequests.update_attributes(params[:holidayrequests])
    flash[:notice] = "Holiday Request updated!"
    redirect_to @holidayrequests
    end
  
  def destroy
    login_required
    @holidayrequests = Holidayrequests.find(params[:id])
    @holidayrequests.destroy
    redirect_to :action => "index"
end



end
