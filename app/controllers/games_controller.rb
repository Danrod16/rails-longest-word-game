class GamesController < ApplicationController
  def new
    ordered_letters = (10...27).map { |i| i.to_s 36 }
    shuffled_letters = ordered_letters.shuffle * 3
    @letters = shuffled_letters.first(10)
  end

  def score
    @score = params[:question]
  end

end
