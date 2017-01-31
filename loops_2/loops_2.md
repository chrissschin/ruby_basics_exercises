## Even or Odd?
###### Write a loop that prints numbers 1-5 and whether the number is even or odd. Use the code below to get started.

```ruby

count = 1

loop do
  if count.odd?
    puts "#{count} is odd"
  else
    puts "#{count} is even"
  end  
  break if count == 5
  count += 1
end

```

##Catch the Number
###### Q: Modify the following code so that the loop stops if number is between 0 and 10.
```ruby

# loop do
#   number = rand(100)
#   puts number
# end

loop do
  number = rand(100)
  puts number
  break if number <= 10
  #break if number.between?(0,10)
end

```


##Conditional Loop
###### Using an if/else statement, run a loop that prints "The loop was processed!" one time if process_the_loop equals true. Print "The loop wasn't processed!" if process_the_loop equals false.

```ruby

# process_the_loop = [true, false].sample

# sample chooses a random element or not
# array = [1,2,4]
# pulls 2 numbers
# array.sample(2) => [2,4]


process_the_loop = [true, false].sample

# if process_the_loop
#   loop do
#     puts "The loop was processed!"
#     break
#   end
# else
#   puts "The loop wasn't processed!"
# end

if process_the_loop == true
  puts "The loop processed"
else
  puts "loop didnt process"
end

# loop do process_the_loop
#   if process_the_loop == true
#     puts "The loop processed"
#   else
#     puts "loop didnt run"
#   end
#   break
# end

```

##Get the Sum
######The code below asks the user "What does 2 + 2 equal?" and uses #gets to retrieve the user's answer. Modify the code so "That's correct!" is printed and the loop stops when the user's answer equals 4. Print "Wrong answer. Try again!" if the user's answer doesn't equal 4.

```ruby

# loop do
#   puts 'What does 2 + 2 equal?'
#   answer = gets.chomp.to_i
# end

loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  
  if answer == 4
    puts "thats correct!"
    break
  end
  
  puts "try again."
end

```

## Insert Numbers

###### Modify the code below so that the user's input gets added to the numbers array. Stop the loop when the array contains 5 numbers.

```ruby

# user input to numbers
#  stop at 5
numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers << input
  break if numbers.size == 5
end
puts numbers

```

## Empty the Array
###### Given the array below, use loop to remove and print each name. Stop the loop once names doesn't contain any more elements.

```ruby

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.pop
  # or names.shift takes the first index
  break if names.size == 0
  # or names.empty?
end

```

##Stop Counting
######The method below counts from 0 to 4. Modify the block so that it prints the current number and stops iterating when the current number equals 2.

```ruby

# 5.times do |index|
  # ...
# end

5.times do |index|
  if index == 2
    puts index
    break
  end
end

#or 

5.times do |index|
  puts index
  break if index == 2
end


```

```ruby
```

```ruby
```

```ruby
```