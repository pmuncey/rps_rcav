class GamesController < ApplicationController # class names in CamelCase
  def play_rock
    @computer_move = ["Rock", "Paper", "Scissors"].sample
    if @computer_move == "Rock"
      @outcome = "Tied"
      @image = "fa-hand-rock-o"
      @label = "label-warning"
    elsif @computer_move == "Scissors"
      @outcome = "Won"
      @image = "fa-hand-scissors-o"
      @label = "label-success"
    elsif @computer_move == "Paper"
      @outcome = "Lost"
      @image = "fa-hand-paper-o"
      @label = "label-danger"
    end

    render("games/play_rock.html.erb") # "template file" erb = embedded ruby
  end

  def play_scissors
    @computer_move = ["Rock", "Paper", "Scissors"].sample

    if @computer_move == "Rock"
      @outcome = "Lost"
      @image = "fa-hand-rock-o"
      @label = "label-danger"
    elsif @computer_move == "Scissors"
      @outcome = "Tied"
      @image = "fa-hand-scissors-o"
      @label = "label-warning"
    elsif @computer_move == "Paper"
      @outcome = "Won"
      @image = "fa-hand-paper-o"
      @label = "label-success"
    end

    render("games/play_scissors.html.erb") # "template file" erb = embedded ruby
  end

  def play_paper
    @computer_move = ["Rock", "Paper", "Scissors"].sample

    if @computer_move == "Rock"
      @outcome = "Won"
      @image = "fa-hand-rock-o"
      @label = "label-success"
    elsif @computer_move == "Scissors"
      @outcome = "Lost"
      @image = "fa-hand-scissors-o"
      @label = "label-danger"
    elsif @computer_move == "Paper"
      @outcome = "Tied"
      @image = "fa-hand-paper-o"
      @label = "label-warning"
    end

    render("games/play_paper.html.erb") # "template file" erb = embedded ruby
  end
end
