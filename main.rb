require './dairy.rb'
require './generator_emojis.rb'

end_of_inpute = 'end'

text = []
line = ''


puts "Введите запись в дневник (Закончите запись ключом #{end_of_inpute})"

while line != 'end'
	line = STDIN.gets.chomp
	text << line
end

text.pop #This is will delete last user enter lines with key 'end' 

puts 'Вы хотите добавить случайный смайл в запись?(yes/any key)'



if (STDIN.gets.chomp =='yes')
	p = GeneratorEmojis.new(text)
end

Dairy.new(text.join("\n"))

