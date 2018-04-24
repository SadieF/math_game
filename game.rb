class Game
  attr_reader :name

  def initialize(name)
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
  end

  def play_game
    question = Question.new
    question.ask_question
    user_answer = $stdin.gets.chomp
    if question.verify_answer(user_answer)
      puts "Yay! You are a genius"
    else
      puts "What is wrong with you. You lose a life"
      @current_player.lives -= 1
    end
  end

  def start
    while @player1.is_alive and @player2.is_alive
      play_game
    end
  end
end

new_game = Game.new(2)
p new_game


