class Game
  attr_reader :code, :rounds
  
  def initialize
    @code = File.readlines('google-10000-english-no-swears.txt').sample
    @rounds = 6
  end
end