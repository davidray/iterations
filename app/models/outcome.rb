class Outcome < ActiveRecord::Base
	@@test = 0
	@@story = 0	
  attr_accessible :value, :description, :points, :lane
  
  named_scope :test, :conditions => {:lane => 'test'}
  named_scope :dev, :conditions => {:lane => 'dev'}
     
  def self.random(outcomes)
    return outcomes[rand(outcomes.length)] unless outcomes.blank?
  end
  

end
