require_relative 'child'
require_relative 'parent'

child = Child.new
child.say_halo

p = Parent.new
p.say_halo


puts "call super class with child class : #{Child.superclass}"

puts "Parent super class : #{Parent.superclass}"

puts "OBJECT super class : #{Object.superclass}"

puts "BasicObject Super Class : #{Object.superclass.superclass.inspect}"

puts "call super class with child object : #{child.superclass}"