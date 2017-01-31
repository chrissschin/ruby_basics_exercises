## Runaway Loop

###### Q: The code below is an example of an infinite loop. The name describes exactly what it does: loop infinitely. This loop isn't useful in a real program, though. Modify the code so the loop stops after the first iteration.

```ruby
loop do
  puts 'Just keep printing...'
end

loop do
  puts 'Just keep printing...'
  break
end

# adding the break stops the Loop
```

## Loopception

###### Q:The code below is an example of a nested loop. Both loops currently loop infinitely. Modify the code so each loop stops after the first iteration.


```ruby

# loop do
#   puts 'This is the outer loop.'

#   loop do
#     puts 'This is the inner loop.'
#   end
# end

# puts 'This is outside all loops.'

loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break
  end
  break
end

puts 'This is outside all loops.'

```

## Control the Loop

###### Q: Modify the following loop so it iterates 5 times instead of just once.

```ruby

iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations > 5    
end


# if break is moved above i
i = 1

loop do
  puts "Number of i = #{i}"
  break if i == 5     
  i += 1
end

```

## Loop on Command

###### Q: Modify the code below so the loop stops iterating when the user inputs 'yes'.

```ruby

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == 'yes'
  puts "answer 'yes' if you want to stop"
end

```


## Say Hello

###### Q: Modify the code below so "Hello!" is printed 5 times.

```ruby

say_hello = true
count = 0

while say_hello
  puts 'Hello!'
  count += 1
  say_hello = false if count == 5
end

#my way
5.times do
  puts "hello"
end


```

## Print While

###### Q: Using a while loop, print 5 random numbers between 0 and 99. The code below shows an example of how to begin solving this exercise.

```ruby
#numbers = []

#while <condition>
  # ...
#end

numbers = []

while true
 5.times do
 numbers.push(Random.rand(0..99))
 end
 puts numbers
 break
end

# another way
numbers_2 = []
while numbers_2.size < 5
  #numbers_2 << rand(100)
  numbers_2.push(rand(100))
end
puts numbers_2 

```


## Count Up
###### Q: The following code outputs a countdown from 10 to 1. Modify the code so that it counts from 1 to 10 instead.
```ruby

#count = 10

#until count == 0
#  puts count
#  count -= 1
#end

count = 0

until count > 10
  puts count
  count += 1
end

```
## Print Until

###### Q: Given the array of several numbers below, use an until loop to print each number.

```ruby

numbers = [7, 9, 13, 25, 18]

# my ans
iterator = 0
until iterator == numbers.size
 puts numbers[iterator]
 iterator += 1
end

```

## That's Odd

###### Q: The code below shows an example of a for loop. Modify the code so that it only outputs i if i is an odd number
```ruby

for i in 1..100
  puts i
end

for i in 1..100
  puts i if i % 2 != 0
end

# or we can use a method to find the odd // also an even for this too. #even?

for i in 1..100
  puts i if i.odd?
end

```
## Greet Your Friends
###### Q: Your friends just showed up! Given the following array of names, use a for loop to greet each friend individually.

```ruby
friends = ['Sarah', 'John', 'Hannah', 'Dave']

friends.each { |friend| puts "hello #{friend}"}

#or

for friend in friends
  puts "Hello, #{friend}"
end

```
