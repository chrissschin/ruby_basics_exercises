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
```



