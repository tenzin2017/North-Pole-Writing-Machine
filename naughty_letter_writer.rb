require 'erb'

kids_data   = File.read('data/kids-data.txt')
naughty_letter = File.read('templates/naughty_letter_template.txt.erb')

kids_data.each_line do |kid|

a = kid.split('|')
infraction = a[1]

kid_data_array = kid.split

  name       = kid_data_array[0]
  gender     = kid_data_array[1]
  behavior   = kid_data_array[2]
  toys       = kid_data_array[3..8]

  rand_toy = toys.sample
  if rand_toy == "Kaleidoscope"
     rand_toy = toys.sample
   else
     rand_toy = toys.sample
   end

   rand_toy = toys.delete(rand_toy)

   remaining_toys = toys.to_s

  next unless behavior == 'naughty'

  filename    = 'letters/naughty/' + name + '.txt'
  letter_text = ERB.new(naughty_letter, nil, '-').result(binding)

  puts "Writing #{filename}."
  File.write(filename, letter_text)

end

puts 'Done!'
