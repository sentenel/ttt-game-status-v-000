# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]

def won?(board)
  winning_combination = nil
  x_places = board.select {|index| index == "X"}
  o_places = board.select {|index| index == "O"}
  WIN_COMBINATIONS.each do |combination|
    if combination.all? {|index| x_places.include?(index)} || combination.all? {|index| o_places.include?(index)}
      winning_combination = combination
    end
  end
  winning_combination
end