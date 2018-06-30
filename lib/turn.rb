def turn(board)
  move_is_valid = false 
  
  until move_is_valid
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    
    
  end
  
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    puts "Sorry. Invalid move. Try again."
    turn(board)
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
  valid = FALSE
  
  if(index.between?(0,8) == true && position_taken?(board, index) == false)
    valid = true
  end
  valid
end

def position_taken?(board, index)
  its_taken = nil
  
  if(board[index] == " " or board[index] == '' or board[index] == nil)
    its_taken = FALSE
  else
    its_taken = TRUE
  end
  its_taken
end

def move(board, index, player_token = "X")
  board[index] = player_token
end