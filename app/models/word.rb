class Word < ActiveRecord::Base
  attr_accessible :sentence, :term, :translation
end
