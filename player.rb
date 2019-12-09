class Player

  attr_accessor :lives, :active, :name

  def initialize(name)
    @name = name
    @lives = 3
    @active = false
  end

  def toggle_active
    if self.active
      self.active = false
    else
      self.active = true
    end
  end

  def current_lives
    puts "Player #{@name} has #{@lives} lives remaining!"
  end

end