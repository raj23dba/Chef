class Raj  
  def oracle  
    puts "He is DBA"  
  end  
end  
  
class Sandeep < Raj  
  def WLC  
    puts "He is weblogic"  
  end  
end  
  
test = Sandeep.new  
test.oracle  
test.WLC  