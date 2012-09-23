class Post < ActiveRecord::Base
  attr_accessible :content, :published_date, :title
  
  TYPES = {
    'Blog' => 'BlogPost',
    'Event' => 'EventPost'
  }
  
end
