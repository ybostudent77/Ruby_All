print "Введите строку: "
string = gets.chomp.downcase.gsub(/[^a-z]/, '') # приводим все символы к нижнему регистру и удаляем все, что не является буквой

letter_count = Hash.new(0) # создаем пустой хеш для хранения количества каждой буквы

string.each_char do |letter|
  letter_count[letter] += 1 # добавляем 1 к счетчику для каждой буквы
end

puts "Количество букв в строке: #{letter_count.values.sum}"
puts "Перечень букв и их количество:"
letter_count.each do |letter, count|
  puts "#{letter}: #{count}"
end
