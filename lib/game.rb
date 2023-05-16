class Game
  attr_accessor :code, :rounds
  
  def initialize
    @code = File.readlines('google-10000-english-no-swears.txt').sample
    @rounds = 6
  end

  def convert_code(code_copy)
    code_array = code.split('')
end