class Game
  attr_reader :code, :rounds
  
  def initialize
    @code = []
    @rounds = 6
  end

  def code=(*)
    @code = File.readlines('google-10000-english-no-swears.txt').sample
  end
end