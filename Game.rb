class Game

  def start(player1, player2)
    players = [player1, player2]
    current = 0

    while players[current].alive? do
      puts "=============New Turn==================="

      current_player = players[current].name
      puts "current player name: #{current_player} turn"
      question = Question.new
      puts question.questionString
      answer = gets.chomp.to_i
      validated = question.validate_answer?(answer)
      if !validated
        players[current].decrement
        puts "#{current_player} : Seriously? No!"
        puts "current scores:"
        players.each do |player|
          puts "#{player.name}: #{player.lives}/3"
        end
      end
      break if players[current].lives == 0
      current = (current + 1) % players.length
     end

  end

end
