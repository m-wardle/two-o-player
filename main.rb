require_relative 'player'
require_relative 'question'
require_relative 'game'

game = Game.new
p1 = Player.new("One")
p2 = Player.new("Two")

p1.toggle_active

q1 = Question.new
q1.set_nums
q1.ask_question((
  if p1.active
    p1.name
  else
    p2.name
  end
))
