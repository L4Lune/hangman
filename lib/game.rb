class Game
  attr_accessor :code, :rounds, :code_array
  
  def initialize
    @code = File.readlines('google-10000-english-no-swears.txt').sample
    @code_array = []
    @rounds = 6
  end

  def code_array=(code)
    @code_array = code.scan(/[a-z]/)
    p code_array
  end

  def display_code_board(code_array)
    i = 0
    code_board = []
    until code_board.length == code_array.length do
      code_board[i] == '_'
      i+=1
    end
    p code_board
  end
end