# Repetitive Tasks:
# While loop
counter = 0

while (counter < 10) do
  counter += 1
  puts counter
end

puts "after the loope the counter is #{counter}"

# off by one errors:

numbers = [0, 1, 2, 3, 4 , 5]

index = 0
while index <= numbers.length do
     puts numbers[index]
     index += 1
end

# Until the same as while loop

bananas = 0

until bananas >= 100 do
  bunch = rand(6)
  bananas += bunch
  puts "i have #{bananas} bananas."
end

puts bananas
