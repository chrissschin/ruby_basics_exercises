

## What's My Value? (Part 1)
###### Q: What will the following code print and why? Don't run the code until you have tried to answer.

``` ruby
a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a

# my ans: 7 because a is a reference to 7. 
# b only changes the object the variable references 

```

## What's My Value? (Part 2)

###### Q: What will the following code print, and why? Don't run the code until you have tried to answer.

```ruby
a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a

# my ans : 7 because the a inside my_value references a 10
# just renamed a to b a = 7 is a top level value. the a inside my_value() is a local variable.
# respectively variables outside method cannot access variables inside. vice versa.

```

## What's My Value? (Part 3)
###### Q: What will the following code print, and why? Don't run the code until you have tried to answer.

```ruby

a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a

# a still is 7 because my_value(b) has a local variable a which is not seen outside

```


## What's My Value? (Part 4)

###### Q: What will the following code print, and why? Don't run the code until you have tried to answer.

```ruby

a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a
# a will be Xy-zy
# this is because strings are mutable 
# b is references the same string object as a

```


## What's My Value? (Part 5)

###### What will the following code print, and why? Don't run the code until you have tried to answer.

```ruby
a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a

# a will be Xyzzy
# we are not modifying the string like in the previous exercise.
# this is an assignment. not mutation.


```

## What's My Value? (Part 6)

###### What will the following code print, and why? Don't run the code until you have tried to answer.

```ruby

a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a

# undefined there is no a variable defined in the method.
# cannot access top level variable

```


## What's My Value? (Part 7)

###### Q: What will the following code print, and why? Don't run the code until you have tried to answer.

```ruby

a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# should be 3
# blocks can modify local variables that are defined outside the block

```



## What's My Value? (Part 8)
###### Q: What will the following code print, and why? Don't run the code until you have tried to answer.

```ruby

array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# undefined because a is not defined outside the block
# it is only local to the block

# this will print though because the a is local
array.each do |element|
  a = element
  puts a
end

```

## What's My Value? (Part 9)
###### Q: What will the following code print, and why? Don't run the code until you have tried to answer.

```ruby
a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a

# 7 because the a argument is for the block only.
# this is shadowing because the block argument hides a local variable that is defined outside the block.
# so this has no effect on the outside variable.

```


## What's My Value? (Part 10)
###### Q: What will the following code print, and why? Don't run the code until you have tried to answer.

```ruby

a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a


# should be 10?? or seven because its in a method << wrong 

# it throws and error => undefined method `+' for nil:NilClass (NoMethodError)
# because there is no a variable defined insde the method


```