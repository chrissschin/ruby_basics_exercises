
## Make and Model
```ruby

def car( make, model )
  make + ' ' + model
end

puts car('Toyota', 'corolla')


```

##Day or Night?

###### The variable below will be randomly assigned as true or false. Write a method named time_of_day that, given a boolean as an argument, prints "It's daytime!" if the boolean is true and "It's nighttime!" if it's false. Pass daylight into the method as the argument to determine whether it's day or night.

```ruby

# selects random index in array
daylight = [true, false].sample

def time_of_day(bool)
  if bool == true
   return "its daytime!"
  else
   return "its nighttime"
  end  
end

time_of_day(daylight)

```

## Name Not Found
###### assigning a default parameter

```ruby

def assign_name(name = "billy")
  name
end

assign_name  #outputs billy
assign_name("poop")

```



