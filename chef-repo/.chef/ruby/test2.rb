class Awesome
attr_accessor :awesome_level
def initialize(temp_var1)
awesome_level = temp_var1
print "I am in Awesome constructor \n"
end


end
awesome_sauce = Awesome.new("test") # We're now passing in the parameter our
awesome_sauce1 = Awesome.new(200)
puts awesome_sauce1.awesome_level

awesome_sauce1.awesome_level=500

puts awesome_sauce1.awesome_level