
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