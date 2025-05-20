require 'open-uri'
require 'json'

class GamesController < ApplicationController
  def new
    @letters = Array.new(10) { ('A'..'Z').to_a.sample }

  end


  def score
    @word = params[:word]
    @grill = params[:grill]
    letters = @grill
    word = @word

  word.chars.all? do |letter|
      word.count(letter) <= letters.count(letter)
    end

    url = "https://wagon-dictionary.herokuapp.com/safe"
    json = JSON.parse(url.read)
    json["found"]
  end

end
