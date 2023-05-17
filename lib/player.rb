class Player
  attr_reader :guess, :name
  
  def initialize
    @guess = nil
    @name = nil
  end
  
  def guess=(user_input)
    puts 'What letter will you select?'
    user_input = gets.chomp.downcase
    if user_input.length > 1 || user_input.match(/\d/)
      puts 'That is not a valid guess. Please enter a letter.' 
      guess=()
    else user_input.length == 1 && user_input.match(/[a-z]/)
      @guess = user_input
      p self.guess
    end
  end 

  def name=(user_input)
    puts 'What is your name?'
    @name = gets.chomp.capitalize
  end
end