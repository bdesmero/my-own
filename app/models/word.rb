class Word < ActiveRecord::Base
  attr_accessible :example_translation, :example, :term, :translation
  
  
  def self.check_quiz params
    word = self.find params[:word_id]
    if params[:translation] == word.translation
      return 1
    else
      return 0
    end
  end
  
end
