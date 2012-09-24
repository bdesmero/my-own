class Word < ActiveRecord::Base
  attr_accessible :example_translation, :example, :term, :translation
end
