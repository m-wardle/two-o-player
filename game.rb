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
        self.winner = p1.name
      else
        self.winner = p2.name
      end

      puts "GAME OVER! Player #{@winner} wins!"
      self.game_on = false
    end
  end


end