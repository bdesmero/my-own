class Word < ActiveRecord::Base
  attr_accessible :example_translation, :example, :term, :translation,
    :category_id
  
  belongs_to :category
  
  paginates_per 10
  
  def self.check_quiz params
    word = self.find params[:word_id]
    if params[:answer].present?
      if params[:answer].downcase == word.translation.downcase
        Score.update_right
        return 1
      else
        Score.update_wrong
        return 0
      end
    end
  end
  
end
