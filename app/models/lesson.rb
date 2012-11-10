class Lesson < ActiveRecord::Base
  attr_accessible :description, :title
  
  has_many :contents
  
end
