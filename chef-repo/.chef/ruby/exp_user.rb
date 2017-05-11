
class OracleException < Exception
end

class Oracle
def break
 raise OracleException, "Its a raised exception"
end
end

obj = Oracle.new

begin
obj.break
rescue Exception => e
puts "these are exception #{e.message}"
puts e.inspect
end