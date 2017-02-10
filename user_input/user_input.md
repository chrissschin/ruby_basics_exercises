
##Repeat after me
######Write a program that asks the user to type something in, after which your program should simply display what was entered.

```ruby

puts "enter anyting "
answer = gets.chomp()
puts answer

```

##Your Age in Months
######Write a program that asks the user for their age in years, and then converts that age to months.


##Passwords

######Write a program that displays a welcome message, but only after the user enters the correct password, where the password is a string that is defined as a constant in your program. Keep asking for the password until the user enters the correct password.

```ruby

#should not be used as a model for passwords
# The actual password is stored as clear text, not as encrypted form
# The password the user enters is visible for shoulder surfers to see
secret_pass = 'hi'

puts "please enter your password"
loop do
  ans = gets.chomp
  break if ans === secret_pass
  puts "please try again"
end
puts "Welcome!"
  

```

## User Name and Password

```ruby

# adding in a user 
secret_pass = 'hi'
user = 'chris'

loop do
  puts "please enter your user name"
  get_user = gets.chomp
  puts "please enter pass"
  get_pass = gets.chomp
  break if get_user === user && secret_pass === secret_pass
  puts "please try again"
end
puts "Welcome!"

```

##Dividing Numbers

######Write a program that obtains two Integers from the user, then prints the results of dividing the first by the second. The second number must not be 0, and both numbers should be validated using this method:

```ruby

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil
loop do 
  puts "enter numerator"
  numerator = gets.chomp
  break if valid_number?(numerator)
  puts ">> only integers allowed"
end

denominator = nil
loop do 
  puts "enter denominator"
  denominator = gets.chomp
  if denominator == '0'
    puts '>> invalid. 0 us not allowed'
  else
    break if valid_number?(denominator)
    puts '>>invalid only integers'
  end
end

results = numerator.to_i / denominator.to_i

puts "#{numerator} / #{denominator} = #{results}"

```


##Launch School Printer (Part 2)

###### In an earlier exercise, you wrote a program that prints 'Launch School is the best!' repeatedly until a certain number of lines have been printed. Our solution looked like this:

```ruby
ans = nil
num_ans = nil

loop do
  loop do
    puts '>> How many output lines do you want? Enter a number >= 3: Q to quit'
    ans = gets.chomp
    num_ans = ans.to_i
    
    if ans.downcase === 'q'
      break
    elsif num_ans >= 3
      break
      puts ">> That's not enough lines."
    end
  end
    
  while num_ans > 0
    puts 'Launch School is the best!'
    num_ans -= 1
  end

  break if ans.downcase === 'q'
end

```

## Opposites Attract

######Write a program that requests two integers from the user, adds them together, and then displays the result. Furthermore, insist that one of the integers be positive, and one negative; however, the order in which the two integers are entered does not matter.

######Do not check for positive/negative requirement until after both integers are entered, and start over if the requirement is not met.

######You may use the following method to validate input integers:

```ruby

#2 inputs
## can't have a 0 
#posi and negative number
#output : input 1 + input2

# num_1 = nil
# num_2 = nil

# my version
# def valid_number?(number_string)
#   if number_string == 0
#     puts "Invalid. Only non zeroes"
#   end
#   number_string.to_i.to_s == number_string && number_string.to_i != 0
# end

# loop do
#     puts "> Please enter a positive or negative number"
#     num_1 = gets.chomp
#     break if valid_number?(num_1)
# end

# loop do 
#     puts "> Please enter a positive or negative number"
#     num_2 = gets.chomp
#     break if valid_number?(num_2)
# end

# result = num_1.to_i + num_2.to_i

# puts "#{num_1} + #{num_2} = #{result}"

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

# method that returns the local num variable to global scope
def check_num
  loop do
    puts ">please enter a positive or neg num"
    num = gets.chomp
    return num.to_i if valid_number?(num)
    puts "> oops. only non-zero intergers are allowed"
  end
end

num_1 = nil
num_2 = nil

loop do
  num_1 = check_num
  num_2 = check_num
  # this checks if one of the numbers are neg since posi * neg always is neg
  break if num_1 * num_2 < 0
  puts "> Sorry. one number must be negative"
  puts "> Start over."
end

result = num_1 + num_2
puts "#{num_1} + #{num_2} = #{result}"


```

## Multiply the Sum
####### Write the following methods so that each output is true.
```ruby

def add(num1,num2)
  num1 + num2
end

def multiply(num1, num2)
  num1 * num2
end


puts add(2, 2)
puts add(5, 4)
puts multiply(add(2, 2), add(5, 4)) 



```

##Random Sentence
###### makes a random sentence
```ruby 

#using sample to grab a random index form the array.
#using methods as a way to pass in any array instead of setting it like this
# name = names.sample
names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def name(names)
  names.sample
end  

def activity(activities)
  activities.sample
end


def sentence(name, activity)
  "#{name} went #{activity} today!"
end

puts sentence(name(names), activity(activities))
```

## Print Me (Part 1)
###### Write a method named print_me that prints "I'm printing within the method!" when invoked.

```ruby

def print_me
  puts "I'm printing within the method"
end

print_me

# if you have puts within the method it will return nil because puts is outputting one thing and returning another, which will be nil because we aren't returning anything.

# if no puts, then it return the string.

```

