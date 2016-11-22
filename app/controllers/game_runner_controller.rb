require 'time'

class GameRunnerController < ApplicationController
  def game

    @grid_size = params[:grid_size]
    @grid = generate_grid(@grid_size.to_i)
  end

  def score
    @result = params[:word]
    @start_time = params[:time_start]
    # @endtime = params[:time]
    # @time = Time.parse(@endtime) - Time.parse(@start_time)

  end

  def game_inputs
  end

  def generate_grid(grid_size)
    # TODO: generate random grid of letters
    letters = [*('a'..'z')]
    grid_possibilities = 5.times.map {letters.sample(grid_size)}
    grid = grid_possibilities.flatten!.sample(grid_size)
    return grid
  end

end
