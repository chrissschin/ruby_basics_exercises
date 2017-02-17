
##Unpredictable Weather (Part 1)

```ruby
# simple if statement
sun = ['visible', 'hidden'].sample

if sun == 'visible'
  puts "the sun is bright"
else
  puts 'nada'
end

```

##Unpredictable Weather (Part 2)
```ruby


# using unless is the opposite of and if. 
# its almost like using a != for an if statement. 
sun = ['visible', 'hidden'].sample

unless sun == 'visible'
  puts "The clouds are blocking"
end


```

#Unpredictable Weather (Part 3)
```ruby

# writing an if and unless.

# unless if the sun is visible// do this. dont run if its true.

sun = ['visible', 'hidden'].sample

if sun == 'visible'
  puts "The sun is bright"
end

unless sun == 'visible'
  puts "clouds are blocking"
end


```

## True or false


```ruby

# writing a ternary operator for the provided boolean assignment

# layout
# if_this_is_a_true_value ? then_the_result_is_this : else_it_is_this

boolean = [true, false].sample

puts  boolean == true ? "imtrue!" : "imfalse!"


```

##Stoplight (Part 1)
```ruby

#using a case statement to print for each light.

stoplight = ['green', 'yellow', 'red'].sample

case stoplight
  when 'green'
    puts "go"
  when 'yellow'
    puts 'slow down'
  else
    puts 'stop!'
end

```


## Stoplight (Part 3)

```ruby
# turn into five lines

stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'
  puts 'Go!'
when 'yellow'
  puts 'Slow down!'
else
  puts 'Stop!'
end

# do this only when it can be done in one line

case stoplight
when 'green'  then puts 'go!'
when 'yellow' then puts 'slow!'
else               puts 'stop!'
end

# do if it has more statements put on multiple lines
case stoplight
when 'green'
  puts 'Go!'
  accelerate
when 'yellow'
  puts 'Slow down!'
  decelerate
else
  puts 'Stop!'
  stop
end

```


```ruby



```