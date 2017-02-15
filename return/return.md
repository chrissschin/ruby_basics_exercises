
```ruby
def meal
  'Dinnnner'
  puts 'Dinner'
end

p meal

#we use p so nil is visible in the output.

#return value of puts is nil. puts Dinner will output first.

```

## Breakfast, Lunch, or Dinner? (Part 6)

###### what happens here?

```ruby
def meal
  return 'Breakfast'
  'Dinner'
  puts 'Dinner'
end

puts meal

#only breakfast gets printing since return exits the method


```


```ruby


def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep

#counts 0-5
# the 5 is the returned number from times

```


## Counting Sheep (Part 2)
###### whats it print?
```ruby 

def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep

# 0-4 return 10 since its last line. 5 still gets returned but since 10 is last then it returns that instead.

```


## Counting Sheep (Part 3)
###### whats it print?
```ruby 

def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep


# 0-2 then returns nil because there is no value provided. i can do return 5 and itll be 0 1 2 5. using 5 as the return value.
# 
```