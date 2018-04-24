class Game
  attr_reader :name

  def initialize(name)
    random_name1 = ['Gabe', 'Matt', 'Wendy', 'Sadie', 'Anhad', 'Alex'].sample
    random_name2 = ['Morgan', 'Andy', 'Natalie', 'Sam', 'Dominic'].sample

    @player1 = Player.new(random_name1)
    @player2 = Player.new(random_name2)
    @current_player = @player1
  end

  def new_turn
    (@current_player == @player1) ? @current_player = @player2 : @current_player = @player1
    puts "<--- NEW TURN --->"
  end

  def play_game
    puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
    question = Question.new
    question.ask_question(@current_player.name)
    user_answer = $stdin.gets.chomp
    if question.verify_answer(user_answer)
      puts "Yay #{@current_player.name}! You are a genius \n "
    else
      puts "#{@current_player.name}, what is wrong with you. You lose a life \n "
      @current_player.lives -= 1
    end
    new_turn
  end

  def start
    puts " \n <--- NEW GAME --->"
    while @player1.is_alive and @player2.is_alive
      play_game
    end
    puts "Well you pretty much suck."
    puts "#{@current_player.name} wins with a score of #{@current_player.lives}/3! \n "
    puts "<--- GAME OVER --->"
  end

end




