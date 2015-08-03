class GameBoard
	attr_reader :players, :values
def initialize(players, values)
	@players = players
	@values = values
	@player1, @player2 = players.shuffle
	@value1, @value2 = values
	@mapping = {
								"a" => " ",
								"b" => " ",
								"c" => " ",
								"d" => " ",
								"e" => " ",
								"f" => " ",
								"g" => " ",
								"h" => " ",
								"i" => " "
						 }
end

def switch_players
	@player1, @player2 = @player2, @player1
	@value1, @value2 = @value2, @value1
end

def display
	puts ""
	puts "#{@player1} is now selecting..."
	puts " #{@mapping["a"]} | #{@mapping["b"]} | #{@mapping["c"]}	 a | b | c "
	puts " --|---|--	 --|---|--"
	puts " #{@mapping["d"]} | #{@mapping["e"]} | #{@mapping["f"]}	 d | e | f "
	puts " --|---|--	 --|---|--"
	puts " #{@mapping["g"]} | #{@mapping["h"]} | #{@mapping["i"]}	 g | h | i "
	puts ""
end

def selection
	@human_move = gets.chomp.to_s.downcase

	if @human_move == "quit"
		then terminate
	elsif ["a", "b", "c", "d", "e", "f", "g", "h", "i"].include?(@human_move) 
		update_board
	else 
		puts "*You must select a through i."
			switch_players
	end
end

def update_board
		if @human_move == "a" && @mapping["a"] == " "
							then @mapping["a"] = @value1           
		elsif @human_move == "b" && @mapping["b"] == " "
							then @mapping["b"] = @value1
		elsif @human_move == "c" && @mapping["c"] == " "
							then @mapping["c"] = @value1
		elsif @human_move == "d" && @mapping["d"] == " "
							then @mapping["d"] = @value1
		elsif @human_move == "e" && @mapping["e"] == " "
							then @mapping["e"] = @value1
		elsif @human_move == "f" && @mapping["f"] == " "
							then @mapping["f"] = @value1
		elsif @human_move == "g" && @mapping["g"] == " "
							then @mapping["g"] = @value1
		elsif @human_move == "h" && @mapping["h"] == " "
							then @mapping["h"] = @value1
		elsif@human_move == "i" && @mapping["i"] == " "
							then @mapping["i"] = @value1
		else nil
		end
end
                   
def winning_combo 
	x = ["x", "x", "x"]
	o = ["o", "o", "o"]

	combo_1x = @mapping.values_at("a", "b", "c").eql?(x)
		combo_1o = @mapping.values_at("a", "b", "c").eql?(o)
	combo_2x = @mapping.values_at("d", "e", "f").eql?(x)
		combo_2o = @mapping.values_at("d", "e", "f").eql?(o)
	combo_3x = @mapping.values_at("g", "h", "i").eql?(x)
		combo_3o = @mapping.values_at("g", "h", "i").eql?(o)
	combo_4x = @mapping.values_at("a", "d", "g").eql?(x)
		combo_4o = @mapping.values_at("a", "d", "g").eql?(o)
	combo_5x = @mapping.values_at("b", "e", "h").eql?(x)
		combo_5o = @mapping.values_at("b", "e", "h").eql?(o)
	combo_6x = @mapping.values_at("c", "f", "i").eql?(x)
		combo_6o = @mapping.values_at("c", "f", "i").eql?(o)
	combo_7x = @mapping.values_at("a", "e", "i").eql?(x)
		combo_7o = @mapping.values_at("a", "e", "i").eql?(o)
	combo_8x = @mapping.values_at("c", "e", "g").eql?(x)
		combo_8o = @mapping.values_at("c", "e", "g").eql?(o)

	if combo_1x == true
		puts "\n#{@player1} wields the #{@value1} so mightily! leaving #{@player2} in his wake."
			win_display
				terminate
	elsif combo_1o == true
		puts "\n#{@player1} wields the #{@value1} so mightily! leaving #{@player2} in his wake."
			win_display
				terminate
	elsif combo_2x == true
		puts "\n#{@player1} wields the #{@value1} so mightily! leaving #{@player2} in his wake."
			win_display
				terminate
	elsif combo_2o == true
		puts "\n#{@player1} wields the #{@value1} so mightily! leaving #{@player2} in his wake."
			win_display
				terminate
	elsif combo_3x == true
		puts "\n#{@player1} wields the #{@value1} so mightily! leaving #{@player2} in his wake."
			win_display
				terminate
	elsif combo_3o == true
		puts "\n#{@player1} wields the #{@value1} so mightily! leaving #{@player2} in his wake."
			win_display
				terminate
	elsif combo_4x == true
		puts "\n#{@player1} wields the #{@value1} so mightily! leaving #{@player2} in his wake."
			win_display
				terminate
	elsif combo_4o == true
		puts "\n#{@player1} wields the #{@value1} so mightily! leaving #{@player2} in his wake."
			win_display
				terminate
	elsif combo_5x == true
		puts "\n#{@player1} wields the #{@value1} so mightily! leaving #{@player2} in his wake."
			win_display
				terminate
	elsif combo_5o == true
		puts "\n#{@player1} wields the #{@value1} so mightily! leaving #{@player2} in his wake."
			win_display
				terminate
	elsif combo_6x == true
		puts "\n#{@player1} wields the #{@value1} so mightily! leaving #{@player2} in his wake."
			win_display
				terminate
	elsif combo_6o == true
		puts "\n#{@player1} wields the #{@value1} so mightily! leaving #{@player2} in his wake."
			win_display
				terminate
	elsif combo_7x == true
		puts "\n#{@player1} wields the #{@value1} so mightily! leaving #{@player2} in his wake."
			win_display
				terminate
	elsif combo_7o == true
		puts "\n#{@player1} wields the #{@value1} so mightily! leaving #{@player2} in his wake."
			win_display
				terminate
	elsif combo_8x == true
		puts "\n#{@player1} wields the #{@value1} so mightily! leaving #{@player2} in his wake."
			win_display
				terminate
	elsif combo_8o == true
		puts "\n#{@player1} wields the #{@value1} so mightily! leaving #{@player2} in his wake."
			win_display
				terminate
	else nil
	end
end

def play
	while @mapping.has_value?(" ")
		display
		selection
		winning_combo
		switch_players
	end
	puts "Looks like it was a tie..."
	win_display
	terminate
end

def win_display
	puts ""
	puts " #{@mapping["a"]} | #{@mapping["b"]} | #{@mapping["c"]}"
	puts " --|---|--"
	puts " #{@mapping["d"]} | #{@mapping["e"]} | #{@mapping["f"]}"
	puts " --|---|--"
	puts " #{@mapping["g"]} | #{@mapping["h"]} | #{@mapping["i"]}"
	puts ""
end

#def game_over
	#win_display
	#puts "Looks like it was a tie."
  #exit
#end

def terminate
	exit
end

end

#DO I NEED PLAY OR SWITCH_PLAYERS? CAN I CONDENSE IT? put game methods in play and switch_players in selection. 07/24/2015


players = ["Ham Sandwich", "Carl"]
values = ["x", "o"]

puts "********Welcome to tic tac toe!******** \n Select a letter a-i that correlates with the space on the board."
game = GameBoard.new(players, values)
game.play
