class Outcome < ActiveRecord::Base
  attr_accessible :value, :description, :points
  
  named_scope :tests, :conditions => {:lane => 'test'}
  named_scope :dev, :conditions => {:lane => 'dev'}
     
  def self.random
    self.tests
    ids = connection.select_all("SELECT id FROM outcomes")
    return find(ids[rand(ids.length)]["id"].to_i) unless ids.blank?
  end
  

end
