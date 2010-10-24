class PlayController < ApplicationController
  def index
    
  end
  
  def work_on_a_story
    if param[:lane] and param[:lane] == 'test'
      @outcome = Outcome.random :test
    else
      @outcome = Outcome.random :dev
    end
  end

end
