class LeadsController < ApplicationController

  def index
    binding.pry
    @leads = Lead.all
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
