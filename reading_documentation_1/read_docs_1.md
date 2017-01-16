## Return Value of Break
###### In the previous exercise, you learned that the while loop returns nil unless break is used. Locate the documentation for break, and determine what value break sets the return value to for the while loop.

break WILL return nil there is no argument.
i tried **break(1)** and it returned 1

```ruby
result = while true
  break(1)
end

p result
```
without the method invocation it returned nil

**break** is a method

## Large Numbers
###### Q: Using the ruby documentation, determine how you can write large numbers in a way that makes them easier to read.

They are under literals.rdoc 
To easily understand large numbers we can use underscores such as : 1_932_222

**literals include:** 
- Booleans and nil
- Numbers
- Strings
- Symbols
- Arrays
- Hashes
- Ranges
- Regular Expressions
- Procs

## Symbol Syntax
###### Q: Using the ruby documentation, determine how you would write a Symbol that represents your name. We aren't looking for a String; we want a Symbol, which is one of ruby's datatypes.




