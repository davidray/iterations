class OutcomesController < ApplicationController
  def index
    @outcomes = Outcome.all
  end
  
  def show
    @outcome = Outcome.find(params[:id])
  end
  
  def new
    @outcome = Outcome.new
  end
  
  def create
    @outcome = Outcome.new(params[:outcome])
    if @outcome.save
      flash[:notice] = "Successfully created outcome."
      redirect_to @outcome
    else
      render :action => 'new'
    end
  end
  
  def edit
    @outcome = Outcome.find(params[:id])
  end
  
  def update
    @outcome = Outcome.find(params[:id])
    if @outcome.update_attributes(params[:outcome])
      flash[:notice] = "Successfully updated outcome."
      redirect_to @outcome
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @outcome = Outcome.find(params[:id])
    @outcome.destroy
    flash[:notice] = "Successfully destroyed outcome."
    redirect_to outcomes_url
  end
end
