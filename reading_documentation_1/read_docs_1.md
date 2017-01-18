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

found under literals.rdoc

```ruby
:Christian 
```
what is a symbol? (note for self)
- object (values) with names

```ruby
x = "hello"
y = 50
z = 50
a = x
b = "hello"
```
example symbol table :
* points to numbers are random

| name          | id            | points to  |
| ------------- |-------------| -----|
| :x             | 23452         | 2827381|
| :y             | 234523        |  101   |
| :z             | 32452345      |   101  |
| :a             | 134513        | 2827381|
| :b             | 4412344        | 9572732 |

- note that vars x and a point to the same string object
- y and z also point to the same object but different id
- b is a whole new string object even if its same text
- lets say a append ", world". NOW x will = hello, world because the objects are the same. which is the 2827381

this will be the same
:x == :x

if you look at object ids. they are different. same in string textual way not in objects
"x" != "x"

good quote:
>"if the **textual content** of the object is important, use a String."
>"if the **identity** of the object is important, use a Symbol."

ex:

"hello".object_id

will output 70141660837860 then a different id everytime

:hello.object_id

will output the same id everytime it's called

**so:**

person = { 'name' => 'chris', 'age' => 2}

if person2 was made with the same keys then a new object id is made which will take up memory

person = { :name => 'chris', :age => 2}

if person2 was made then the symbol will not be created again.


## Default Arguments in the Middle

###### Consider the following method and a call to that method:

```ruby
def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)
```
###### Use the ruby documentation to determine what this code will print.

found in calling_methods.rdoc

my_method(4,5,6) output is [4,5,3,6]. c assumes default because its assigned 3 so the 6 gets assigned to d

if my_method(4,5) output is [4,2,3,5]




## String Class

###### Lets move on now to the documentation you will use most often; the core API section on Classes and Modules. All of these are listed under Classes on the Core API page.

###### Locate and open the class documentation for the String class.

Located in core API, go to modules_and_classes.rdoc

then find string under class index sidebar

- sidenote: String#size or Array#size, Range::new or Hash::new
- means that the named method is a memebr of the specified class or module.


## Right Justifying Strings

###### Use the ruby documentation for the String class to determine which method can be used to right justify a String object.

\#rjust






