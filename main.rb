require_relative 'player'
require_relative 'question'
require_relative 'game'

def check_answer(p1, p2, q)
  if q.correct_answer != q.answer.to_i
    if p1.active 
      p1.lives -= 1
    else
      p2.lives -= 1
    end
    puts p1.active && p1.current_lives || p2.current_lives
  end
end


game = Game.new
p1 = Player.new("One")
p2 = Player.new("Two")
p1.toggle_active
q = Question.new

while game.game_on
  q.reset
  q.ask_question(p1, p2)
  check_answer(p1, p2, q)
  p1.toggle_active
  p2.toggle_active
  game.check_status(p1, p2)
end
