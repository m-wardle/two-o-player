class Game

  attr_accessor :turn, :game_on, :winner

  def initialize
    @turn = 1
    @game_on = true
    @winner = nil
  end

  def check_status(p1, p2)
    if p1.lives == 0 || p2.lives == 0
      if p1.lives > 0
        winner = p1.name
      else
        winner = p2.name
      end

      puts "GAME OVER! Player #{@winner} wins!"
      
  end


end