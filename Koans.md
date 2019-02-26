# Ruby Koans

You can find the content [on](http://rubykoans.com/)

```bash

wget https://github.com/edgecase/ruby_koans/blob/master/download/rubykoans.zip?raw=true

```

## The Path of Enlightment

### Test Diven Development

red: write a failing test and run it
green: make the test pass
refactor: look at the code and see if you can make it any better.

```ruby
assert true
assert_equal 2 , 2
assert_equal 2, 1 + 1
assert_match(/undefined method/, ex.message) # with regex
assert_raise(KeyError) # raise an error
# try code block
begin

rescue Exception => ex

end

nil.inspect # return alwas "nil" as string
123.inspect # return "123" as string

```

## Objects

```ruby
#syntax
class ClassName < ParentClass
  def function_name
  end

assert_equal true, Object.is_a?(Object) # everything is a object
assert_equal Integer, obj.object_id.class #Every object has an id
assert_equal 1, 0.object_id # small ints have fixed ids
assert_equal 3, 1.object_id #pattern: number + number + 1 => 3.object_id (3+3+1)

obj = Object.new
copy = obj.clone # creates a different obj, with a new object id
```

## Arrays

```ruby

a = Array.new
a.size # 0
a.class # Array

# check array values
array[0] = 1
assert_equal [1], array
array[1] = 2
assert_equal [1, 2], array
array << 333 # add at the end

#access array values
array = [:peanut, :butter, :and, :jelly]
assert_equal :peanut, array[0]
assert_equal :peanut, array.first
assert_equal :jelly, array[3]
assert_equal :jelly, array.last
assert_equal :jelly, array[-1]
assert_equal :butter, array[-3]

# slicing
assert_equal [:penaut], array[0,1]
assert_equal [:peanut, :butter], array[0,2]
assert_equal [:andm:jelly], array[2,2]
assert_equal [:andm:jelly], array[2,20]
assert_equal [], array[4,0]
assert_equal [], array[4,100]
assert_equal nil, array[5,0] # get nil, because the 5 pisition not exists

# Ranges as Arrays
assert_equal Range, (1..5).class
assert_not_equal [1,2,3,4,5], (1..5)
assert_equal [1,2,3,4,5], (1..5).to_a
assert_equal [1,2,3,4], (1...5).to_a

# Slices with Ranges
assert_equal [:peanut, :butter, :and], array[0..2]
assert_equal [:peanut, :butter], array[0...2]
assert_equal [:and,:jelly], array[2..-1]

array.push(:last) # to the end of the array
array.pop # last element
array.unshift(:first) # insert first element
array.shift # get the first element

first_name, last_name = ["John", "Smith"] # assignments
first_name, *last_name = ["John", "Smith", "III"] # get in last_name a array, without * you have only Smith
first_name, = ["John", "Smith"] # see the "," its like _ in python. second Value will be throw away

```

## Hashes

Keys that does not exists return nil

```ruby
hash = { :one => "uno", :two => "dos" }
hash[:one] # "uno", if the key doesn't exists, return nil
hash.fetch(:one) # "uno", if the key doesn't exists, fetch raise a KeyError

 hash = { :one => "uno", :two => "dos" }
assert_equal 2, hash.keys.size
assert_equal true, hash.keys.include?(:one)
assert_equal true, hash.keys.include?(:two)
assert_equal Array, hash.keys.class             # Array
hash.keys # return all keys in a Array
assert_equal true, hash.values.include?("dos") # the same with values

# merging
hash = { "jim" => 53, "amy" => 20, "dan" => 23 }
new_hash = hash.merge({ "jim" => 54, "jenny" => 26 })

hash2 = Hash.new("dos") # define with a default value if key not exists
hash[:one] << "uno" # set the default value, its a array, same object
hash = Hash.new {|hash, key| hash[key] = [] } # set default value (array) with block
```

## Strings

go ahead here