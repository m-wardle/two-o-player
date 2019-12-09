class Question

  attr_accessor :num1, :num2, :correct_answer, :answer

  def initialize
    @num1 = 0
    @num2 = 0
    @correct_answer = 0
    @answer = 0
  end

  def set_nums
    self.num1 = rand(19) + 1
    self.num2 = rand(19) + 1
    self.correct_answer = num1 + num2
  end

  def ask_question(player)
    puts "Player #{player}... what is #{@num1} + #{@num2}?"
    self.answer = gets.chomp
    if answer.to_i == correct_answer
      puts "Correct!"
    else
      puts "Wrong! You lose one life"
    end
  end

end