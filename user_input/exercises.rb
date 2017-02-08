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


