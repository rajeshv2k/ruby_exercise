class ChessBoard
  attr_reader :columns, :rows
  
  def initialize(cols, rows)
    @columns = cols
    @rows = rows
    next_row = 0
    (@columns*@rows).times do |i|
      print (i+next_row)%2
      if i>0 && (i+1) % @columns == 0
        print "\n"
        next_row += (@columns % 2) + 1
      end 
    end
  end
  
end

m,n = 0,0

while((m*n) <= 0 ) do
  
  puts"Enter the no of Columns"
  m = (gets).to_i
  puts"Enter the no of Rows"
  n = (gets).to_i
  
  if m*n > 0
    puts"Printing the board\n\n"
    ChessBoard.new(m,n)
    break
  else
    puts"Please enter values in Natural Numbers 1,2,3... \nTry Again"
  end
  
end
