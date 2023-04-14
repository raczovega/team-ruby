#Calculate the sums of each row and each column 
#of the matrix. Complete it with a column that contains 
#the sums of the elements of the rows and a row whose elements 
#are the sums of the elements of the columns

m=[[1,2,3],[4,5,6],[7,8,9]]

column_sum=m.transpose.map(&:sum)

m.each do |row_sum|
    row_sum<<row_sum.sum
end

m<<column_sum


puts "Matrix elements sum:\n"
puts m.to_a.map(&:inspect)




