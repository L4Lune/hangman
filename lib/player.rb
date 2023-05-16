class Player
  attr_reader :guess, :name
  
  def guess = user_input
    puts 'What letter will you select?'
    @guess = gets.chomp
  end 
end