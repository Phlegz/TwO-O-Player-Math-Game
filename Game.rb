class Game

  # def initialize
  #   @player1 = Player.new
  #   @player2 = Player.new
  # end

  def start(player1, player2)

    current_player = player1
    other_player = player2

    while current_player.lives > 0 do
      puts "=============New Turn==================="
      current_player_name = (current_player == player1)? "player1" : "player2"
      other_player_name = (other_player == player1)? "player1" : "player2"
      puts "#{current_player_name} turn"
      @question = Question.new
      @question.print_to_console
      answer = @question.get_answer
      validated = @question.validate_answer?(answer)
      if !validated
        current_player.decrement(current_player.lives)
        puts "#{current_player_name} : Seriously? No!"
        puts "#{current_player_name}: #{current_player.lives}/3  vs  #{other_player_name}: #{other_player.lives}/3"
      end
      break if current_player.lives == 0
      current_player = (current_player == player1) ? player2 : player1
      other_player = (other_player == player1) ? player2 : player1
     end

  end

end
