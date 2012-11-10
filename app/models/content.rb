class Content < ActiveRecord::Base
  attr_accessible :description, :phrase, :translation
  
  belongs_to :lesson
  
end
