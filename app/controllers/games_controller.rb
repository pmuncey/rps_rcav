class GamesController < ApplicationController # class names in CamelCase
  def play_rock
    @computer_move = ["rock", "paper", "scissors"].sample
    if @computer_move == "rock"
      @outcome = "tied"
    elsif @computer_move == "scissors"
      @outcome = "won"
    elsif @computer_move == "paper"
      @outcome = "lost"
    end

    render("games/play_rock.html.erb") # "template file" erb = embedded ruby
  end

  def play_scissors
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @outcome = "lost"
    elsif @computer_move == "scissors"
      @outcome = "tied"
    elsif @computer_move == "paper"
      @outcome = "won"

    render("games/play_scissors.html.erb") # "template file" erb = embedded ruby
  end

  def play_paper
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @outcome = "won"
    elsif @computer_move == "scissors"
      @outcome = "lost"
    elsif @computer_move == "paper"
      @outcome = "tied"

    render("games/play_paper.html.erb") # "template file" erb = embedded ruby
  end

end
