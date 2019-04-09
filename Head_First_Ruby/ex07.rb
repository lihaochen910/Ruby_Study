review_file = File.open "Head_First_Ruby/reviews.txt"

lines = review_file.readlines

review_file.close

puts lines
