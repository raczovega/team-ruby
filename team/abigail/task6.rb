#Change the sequence of columns of the matrix so that the elements of its first row are sorted in ascending order
matrix=[[4,6,3],[5,3,6],[2,7,8]]
matrix_sort=[[0,0,0],[0,0,0],[0,0,0]]

row_sort=matrix[0].sort

i=0
while (i<3)

  idx=row_sort.index(matrix[0][i])
  j=0

  while (j<3)
    matrix_sort[j][idx]=matrix[j][i]
    j+=1
  end
  i+=1

end

puts "Initial matrix:\n"
puts matrix.to_a.map(&:inspect)
puts "Sort matrix:\n"
puts matrix_sort.to_a.map(&:inspect)
