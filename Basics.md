# Ruby Basics

You can found your study material here: [here](https://launchschool.com/books/ruby/read/basics)

## Setup ChefDK

Download chefdk from the official project [site](https://docs.chef.io/chefdk_setup.html)

After installation you can setup your environment

```bash
echo 'eval "$(chef shell-init bash)"' >> ~/.bash_profile
source ~/.bash_profile
```

## Setup pry (debugger)

```bash
gem install pry
```

if you have trouble with a SSL connection to the official repo, you must setup chefdk correctly, see troubleshooting.

Insert this into your scripts:

```ruby
require "pry"
```

continue from breaks with ctrl+D

## Data Types

```ruby
a = 'ten'
# format strings (string interpolation), only double quotes:
b = "I have #{a} dollars"

puts a
```

```Symbols```

Symbols are references, not printing to the screen.

```ruby

:name
:a_symbol
:"symbol string"

```

```Numbers```

float, int...

```nil```

nothing, like None in Python

```ruby

# check for nil expression
"Gude".nil?
false == nil

```

nil is in a if condition false. But both treated as negative

## Operations

if you divided integers you dont get a float. Only ints. Using floats to divide 7.0/3

```ruby

1 == 1 #is equal (strings, integers aso)
"Hallo"+"du"
"one"+1 # Type Error, no implicity casting

```

## Type Conversion

```ruby

"1".to_i+1 # 2
'4 hi there'.to_i # 4
'hi there 4'.to_i # 0
'4'.to_f # 4.0
4.to_s # String 4

```

## Data Structures

```ruby

# array
a=[1,3,5,7,8]
a[0]

# hash (dict)
h={:beer => 'ipa'}
h[:'beer']

```

## Expressions

Everything in Ruby is a Expression. Every expression in ruby have a retrun value.

## Exerises

```ruby

"Daniel "+ "Rittweiler"
a = 4567

t = a / 1000
h = a % 1000 / 100
t = a % 100 / 10
o =  a % 100 % 10

d = {a_beautiful_mind: 2001, man_of_steel: 2013}
d[:'man_of_steel']

dates = [1975, 2004, 2013, 2001, 1981]
puts dates[0]

puts 5 * 4 * 3 * 2 * 1
puts 4.30 * 4.30

```