class Game
  attr_accessor :code, :rounds, :code_array, :code_board
  
  def initialize
    @code = File.readlines('google-10000-english-no-swears.txt').sample
    @code_array = []
    @code_board = []
    @rounds = 6
  end

  def code_array=(code)
    @code_array = code.scan(/[a-z]/)
    p code_array
  end

  def display_code_board(code_array)
    i = 0
    while i < self.code_array.length do
      code_board[i] = '_'
      i+=1
    end
    puts code_board.join(' ')
  end

  def update_code_board(user_guess)
    code_array.each_with_index do |letter, index|
      if code_array[index].include?(user_guess)
        self.code_board[index] = user_guess
      else
        code_board
      end
    end
    puts code_board.join(' ')
  end
end