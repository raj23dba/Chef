module Mymodule
class Awesome
attr_accessor :awesome_level,:awesome_level2
def initialize(temp_var1)
awesome_level = temp_var1
print "I am in Module constructor \n"
end
end
end

module Mymodule1
class Awesome
attr_accessor :awesome_level,:awesome_level2
def initialize(temp_var1)
awesome_level = temp_var1
print "I am in module 1 constructor \n"
end
end
class Awesome1
attr_accessor :awesome_level,:awesome_level2
def initialize(temp_var1)
awesome_level = temp_var1
print "I am in module 1 constructor \n"
end
end
end
awesome_sauce = Mymodule::Awesome.new("test") # We're now passing in the parameter our
awesome_sauce3 = Mymodule1::Awesome.new("test")
awesome_sauce1 = Mymodule1::Awesome.new(200)
puts awesome_sauce1.awesome_level