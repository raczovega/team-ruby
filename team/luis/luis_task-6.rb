#Change the sequence of columns of the matrix so 
#that the elements of its first row are sorted in 
#ascending order.

matrix = Array.new(3) { Array.new(3) { rand(20) } }

puts "Matrix before:"
3.times do |i|
  3.times do |j|
    printf("%3d ", matrix[i][j])
  end
  puts
end

first_col = matrix.map { |row| row[0] }
sorted_first_col = first_col.sort
  
sorted_first_col.each_with_index do |value, i|
    matrix[i][0] = value
end

puts "Matrix after:"
3.times do |i|
  3.times do |j|
    printf("%3d ", matrix[i][j])
  end
  puts
end