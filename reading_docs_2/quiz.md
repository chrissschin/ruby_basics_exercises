## Methods Without Arguments
###### Q:How would you use String#upcase to create an uppercase version of the string "xyz"?

```ruby
"xyz".upcase

#sidenote
p = "xts"
s = p
s.upcase!
#this will turn p to uppercase
#upcase is an instance method which returns a new string object
```

## Required Arguments
###### Assume you have this Array:

```ruby
a = %w(a b c d e)
```
###### Q:How would you use Array#insert to insert the numbers 5, 6, and 7 between the elements with values 'c' and 'd'?

**%w(a b c d ) is the same as [a, b, c ,d]**

```ruby
a = %w(a b c d e)

a.insert(3, 5, 6, 7)

# or move 3 starting from last index
a.insert(-3, 5, 6, 7)

```


## Optional Arguments
###### Assume you have the following code:

```ruby
s = 'abc def ghi,jkl mno pqr,stu vwx yz'
puts s.split.inspect
puts s.split(',').inspect
puts s.split(',', 2).inspect
```
###### Q:What will each of the 3 puts statements print?

```ruby
s = 'abc def ghi,jkl mno pqr,stu vwx yz'
v = 'abc, bbb, sss, sddd'
puts s.split.inspect
# splits on whitespace
# ["abc", "def", "ghi,jkl", "mno", "pqr,stu", "vwx", "yz"]

puts s.split(',').inspect
# splits on every comma
# ["abc def ghi", "jkl mno pqr", "stu vwx yz"]

puts s.split(',', 2).inspect
# limits to 2 commas
# ["abc def ghi", "jkl mno pqr,stu vwx yz"]

puts v.split(',', 3).inspect
# limit 3 times
```


## Optional Arguments Redux
###### Assume you have the following code:

```ruby
require 'date'

puts Date.new
puts Date.new(2016)
puts Date.new(2016, 5)
puts Date.new(2016, 5, 13)
```
###### Q: What will each of the 4 puts statements print?

```ruby
require 'date'

puts Date.new
# -4712-01-01
# -4712 BC. Julian date
puts Date.new(2016)
# 2016-01-01

puts Date.new(2016, 5)
# 2016-05-01

puts Date.new(2016, 5, 13)
# 2016-05-13

```

## Mandatory Blocks
###### The Array#bsearch method is used to search ordered Arrays more quickly than #find and #select can. Assume you have the following code:

```ruby
a = [1, 4, 8, 11, 15, 19]
```
###### How would you search this Array to find the first element whose value exceeds 8?

```ruby
a = [1, 4, 8, 11, 15, 19]

a.bsearch { |el| el >= 7 }
# will find the nearest value and use that

```

## Multiple Signatures
###### Q: What do each of these puts statements output?

```ruby
a = %w(a b c d e)
puts a.fetch(7)
# looking for index 7 which is out of bounds, throws an error

puts a.fetch(7, 'beats me')
# "beats me" is a default parameter which prevents an error from occuring

puts a.fetch(7) { |index| index**2 }
# using the block prevents an error. 7 is out of bounds so it uses the block instead
# prints out 49
```