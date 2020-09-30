class NotesController < ApplicationController
  def index
  end

  def new
    @note = Note.new
    @lead = Lead.find_by(id: params["lead_id"])
    @owner = Owner.find_by(id: session["warden.user.owner.key"][0])
    
  end

  def create
    binding.pry
    @note = Note.new(note_params)
    @note.lead_id = params["lead_id"]
    @note.owner_id = params["owner_id"]
    binding.pry

    if @note.save 
      redirect_to leads_path
    else
      binding.pry
      render :new
    end 
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private 
  def note_params
    params.require(:note).permit(:title, :description,:lead_id, :owner_id)
  end 

end
