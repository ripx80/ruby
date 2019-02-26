# Variables

```ruby

# get user input from cmd

name = gets
name = gets.chomp # like strip in python
name = gets.chomp + "is nice!"

```

## Scopes

Inner scope can access variables initialized in an outer scope, but not vice versa.
for...do/end code did not create a new inner scope, method invocation with a block get a new scope.

## Types of Variables

Constants, global variables, class variables, instance variables, and local variables.

```ruby

# you can change this in ruby with a warning, canot be declared in method definitions.
CONST = "this is constant"

# overwrite all scopes, dont use this if you dont need it!
$var = "I am a global var"

# class variables only available by instances
@@instances = 0

#instance variables are available on instances of the same class.
@var = 'instance var'

var = 'local var'

```

## Exercises

```ruby

puts "Sorry, Your last name?"
name = gets.chomp
puts "And your first name was?"
fname = gets.chomp

10.times do
   puts "Welcome #{fname} #{name}"
end


puts "How old are you?"
age = gets.chomp.to_i
(1..4).each do |n|
    step = n * 10
    puts "In #{step} you will be "+(age + step).to_s
end
```
