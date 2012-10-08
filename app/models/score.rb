class Score < ActiveRecord::Base
  attr_accessible :right, :wrong
  
  def self.update_right
    count = Score.first.right
    Score.first.update_attributes :right => count + 1 
  end
  
  
  def self.update_wrong
    count = Score.first.wrong
    Score.first.update_attributes :wrong => count + 1
  end
  
  
  def self.reset
    Score.first.update_attributes :right => 0, :wrong => 0
  end
  
end
