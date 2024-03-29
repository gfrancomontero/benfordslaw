#The thing is, Benford's Law doesn't apply when you have a specific range of random data to extract from.
#The maximum number of the data set that you are extracting random information from must be undetermined, or infinite.
#In other words, say, you used a computer number generator that had a 'set' or specific range from which to extract
#the numbers, eg. 1-100. You would undoubtedly end up with a random dataset of numbers, yes, but the number 1 would
#appear as a first digit as often as the number 9 or any other number.
#**The interesting** part, actually, happens when you let a computer (or nature) decide randomly, and on each instance,
#how large you want the random number to potentially be. Then you get a nice, bi-dimensional random dataset, that perfectly
#attains to Benford's Law. I have generated this RUBY code, which will neatly prove that, to every Mathematician's fascination,
#Benford's Law works each and every single time for randomly chosen numbers, of randomly decided length!
#Gonzalo Franco

###UNFACTORED CODE

dataset = []

999.times do
  random = rand(999)
  dataset << rand(random)
end

startwith1 = []
startwith2 = []
startwith3 = []
startwith4 = []
startwith5 = []
startwith6 = []
startwith7 = []
startwith8 = []
startwith9 = []

dataset.each do |element|
  case element.to_s.split('')[0].to_i
  when 1 then startwith1 << element
  when 2 then startwith2 << element
  when 3 then startwith3 << element
  when 4 then startwith4 << element
  when 5 then startwith5 << element
  when 6 then startwith6 << element
  when 7 then startwith7 << element
  when 8 then startwith8 << element
  when 9 then startwith9 << element
  end
end

a = startwith1.length
b = startwith2.length
c = startwith3.length
d = startwith4.length
e = startwith5.length
f = startwith6.length
g = startwith7.length
h = startwith8.length
i = startwith9.length

sum = a + b + c + d + e + f + g + h + i

p "#{a} times first digit = 1; equating #{(a * 100) / sum}%"
p "#{b} times first digit = 2; equating #{(b * 100) / sum}%"
p "#{c} times first digit = 3; equating #{(c * 100) / sum}%"
p "#{d} times first digit = 4; equating #{(d * 100) / sum}%"
p "#{e} times first digit = 5; equating #{(e * 100) / sum}%"
p "#{f} times first digit = 6; equating #{(f * 100) / sum}%"
p "#{g} times first digit = 7; equating #{(g * 100) / sum}%"
p "#{h} times first digit = 8; equating #{(h * 100) / sum}%"
p "#{i} times first digit = 9; equating #{(i * 100) / sum}%"


### REFACTORED CODE:
dataset = []

999.times do
  random = rand(999)
  dataset << rand(random)
end

count = Hash.new(0)

dataset.each do |element|
  first_digit = element.to_s[0]
  count[first_digit] += 1
end

sum = count.values.sum

count.each do |digit, frequency|
  percentage = (frequency * 100) / sum
  puts "#{frequency} times first digit = #{digit}; equating #{percentage}%"
end
