##Quote Confusion
```ruby

#ways to write strings

"like this"
'or this'

#replacement of double quotes
%Q('im a strings')

#replacement of single quotes // these will work with nested quotes
%q('stringy string')



```


##Ignoring Case

```ruby
#comparing two strings by ignoring Case

name = 'Roger'
name2 = 'r'
puts name.casecmp('RoGeR') # returns 0 because it ignores the case and is the same
puts name2.casecmp('ra') # returns -1 because r < the compared string

# we can get a boolean by comparing two values like this:

name.casecmp('RoGer') == 0 # will return true beacuse the two strings are the same and returns a zero. 

```

## Tricky Formatting

```ruby
state = 'tExAs'
# make first letter capital
state.capitalize
puts state

```

## Goodbye, not Hello

```ruby
#replace hello with goodbye
greeting = 'Hello!'

#ruby has a method alled gsub! or gsub to replace a string

greeting.gsub!('Hello', 'Goodbye')




```