
# Define a matrix
m = [
    [2, 2, 1],
    [3, 2, 1],
    [3, 4, 5],
  ]

# Calulate the row sums and add them to each row
m.each do |row|
  row << row.sum 
end

#Calculate the column sums and add them to the matrx
col = m.transpose.map(&:sum)
col << col.sum
m << col

puts m.to_a.map(&:inspect)


=begin  
row = m.map(&:sum)
col = m.transpose.map(&:sum)
=end

