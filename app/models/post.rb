class Post < ActiveRecord::Base
  attr_accessible :content, :published_date, :title
  
  has_and_belongs_to_many :tags
  
  TYPES = {
    'Blog' => 'BlogPost',
    'Event' => 'EventPost'
  }
  
end
