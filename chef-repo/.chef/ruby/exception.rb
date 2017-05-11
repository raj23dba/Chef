class Oracle
def break_stuff
raise "Whoa, this is broken!"
end
end
foo = Oracle.new
begin
foo.break_stuff # This will throw an exception
rescue Exception => ex
puts "Looks like there was an exception! #{ex.message}" # But this will handle it!
puts ex.inspect
end