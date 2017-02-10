
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

```ruby 



```