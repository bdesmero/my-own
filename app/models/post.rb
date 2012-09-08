class Post < ActiveRecord::Base
  attr_accessible :content, :published_date, :title
end
