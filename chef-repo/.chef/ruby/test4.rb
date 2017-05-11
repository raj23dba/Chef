#Class Instance Variables
module OraclCorp
class WebLogic
@@staci_var=0
attr_accessor :awesome_level
def initialize(awesome_level_temp)
@awesome_level = awesome_level_temp
@@staci_var = awesome_level_temp
end	
def self.info
puts "I am in method info"
@@staci_var
end
end
class Oracle
attr_accessor :awesome_level
def initialize(awesome_level_temp)
@awesome_level = awesome_level_temp
end	
end
class OraceCloud
attr_accessor :awesome_level
def initialize(awesome_level_temp)
@awesome_level = awesome_level_temp
end	
end
end
foo = OraclCorp::WebLogic.new(10)
bar = OraclCorp::WebLogic.new(20)
puts foo.awesome_level
puts bar.awesome_level
foo.awesome_level = 40
puts foo.awesome_level
puts OraclCorp::WebLogic.info()