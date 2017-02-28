
###### Create a hash that contains the following data and assign it to a variable named car.

```ruby

car = {
  :type => "sedan",
  :color => "blue",
  :mileage => 80_000
}

```

###### Using the code below, add the key :year and the value 2003 to car.

```ruby

car = {
  type:    'sedan',
  color:   'blue',
  mileage: 80_000
}

car['year'] = 2003
 
# or

car[:year] = 2003

```


```ruby

#using delete method to delete mileage

car = {
  type:    'sedan',
  color:   'blue',
  mileage: 80_000,
  year:    2003
}

car.delete(:mileage)

```


```ruby

# using each to loop through hashes and output something

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

numbers.each do | key, val |
  puts "A #{key} number is #{val}"
end


```


```ruby
#use map to reutnr a transformed array

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

half_nums = numbers.map do |key,  val |
              val / 2
            end
            
p half_nums

```


```ruby
# here we use select to return a new hash. map returns an array.

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_num = numbers.select do |key,val|
            val < 25
          end
          
p low_num

```


```ruby

#nested hashes

vehicles =  {
  :car => {
    :type => 'sedan',
    :color => 'blue',
    :year => '2003'
  },
  :truck => {
    :type => 'pickup',
    :color => 'red',
    :year => '1998'
  }
}

```

```ruby
# nested array instead of hash

car = {
  type:  'sedan',
  color: 'blue',
  year:  2003
}


car = [[:type, 'sedan'],[:color, 'blue'],[:year, 2003]]

```