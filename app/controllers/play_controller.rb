class PlayController < ApplicationController
  def index
    
  end
  
  def work_on_a_story
    if params[:lane] and params[:lane] == 'test'
      @outcome = Outcome.random(Outcome.test)
    else
      @outcome = Outcome.random(Outcome.dev)
    end
  end

end
