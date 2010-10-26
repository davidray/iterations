require 'test_helper'

class OutcomeTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Outcome.new.valid?
  end
  
end
