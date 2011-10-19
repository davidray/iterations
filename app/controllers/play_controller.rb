class PlayController < ApplicationController
	def index
    
  end
  
  def work_on_a_story
  	@outcome_index = (params[:outcome_index] ? params[:outcome_index] : 0).to_i
    @outcome_index = @outcome_index == (Outcome.dev.size - 1) ? 0 : @outcome_index + 1
    @test_index = (params[:test_index] ? params[:test_index] : 0).to_i
    @test_index = @test_index == (Outcome.test.size - 1) ? 0 : @test_index + 1

		puts "---- #{@outcome_index} ----"

    if params[:lane] and params[:lane] == 'test'
    	@outcome = Outcome.test[@test_index]
    else
      @outcome = Outcome.dev[@outcome_index]
    end
  end

end
