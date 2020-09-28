class LeadsController < ApplicationController

  def index
    @owner = Owner.find_by(id: session["warden.user.owner.key"][0])
    @leads = Lead.all.reverse
  end

  def new
    @owner = Owner.find_by(id: session["warden.user.owner.key"][0])
    @lead = Lead.new
  end

  def create
    @lead = Lead.new(lead_params)
    @lead.owner_id = params["owner_id"].to_i

    if @lead.save 
      redirect_to leads_path
    else
      render :new
    end 
  end

  def show
    @lead = Lead.find_by(id: params["id"])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private 
  def lead_params
    params.require(:lead).permit(:owner_id, :lead_name, :lead_number, :lead_email, :lead_web, :lead_temp)
  end 

end
