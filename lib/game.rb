class Game
  attr_reader :player, :board 
  attr_accessor :rounds
  
  def initialize
    @player = Player.new
    @board = GameBoard.new
    @rounds = 6
  end

  def play
    game_intro_prompt
    board.code_array=()
    board.create_code_board(board.code_array)
    while rounds > 0
      if board.code_array == board.code_board
        puts "You've won the game!"
        play_again
      end
      board.code_board
      player.guess=()
      if board.code_array.include?(player.guess)
        board.update_code_board(player.guess)
      else
        self.rounds -= 1
        puts "Attempts left : #{rounds}"
      end
    end
  end

  def play_again
    puts "Do you want to play again?"
    input = gets.chomp
    if input != 'y' || input != 'yes'

      break 
    else
      Game.new.play
    end
  end

  def game_intro_prompt
    puts "This is hangman! The game where you try to guess a word letter by letter. You will have six chances to guess the letter. Each incorrect guess will decrement the roundss counter by 1. If it reaches 0, it is game over!"
  end
end