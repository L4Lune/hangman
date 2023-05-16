class Player
  attr_reader :guess, :name
  
  def guess=(user_input)
    puts 'What letter will you select?'
    @guess = gets.chomp
  end 

  def name=(user_input)
    puts 'What is your name?'
    @name = gets.chomp
  end
end